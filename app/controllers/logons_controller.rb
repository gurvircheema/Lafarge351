class LogonsController < ApplicationController
  before_action :authenticate_login!

  respond_to :html

  def index
    if superuser?
      @logons = Logon.all
    elsif manager?
      @logons = Logon.recent.where(:site_id => manager.sites.map(&:id))
    else
      @logons = Logon.recent.where(:site_id => current_login.loggable.id)
    end
  end

  def new
    @logon = Logon.new
  end

  def create
    @logon = Logon.new(logon_params)

    unless superuser? || manager?
      @logon.site_id = current_login.loggable.id
    end

    if @logon.save
      flash[:notice] = " Employee logged on"
      redirect_to logons_path
    else
      flash.now[:error]= "Check the errors below and proceed again."
      render 'new'
    end
  end

  def logout
    @logon = Logon.find(params[:id])
    if @logon.update_attribute(:logout_time, Time.now)
      redirect_to logons_path, notice: "Logged out #{@logon.worker.full_name}"
    else
      redirect_to logons_path, alert: "Unable to logout #{@logon.worker.full_name}, try again."
    end
  end

  private

  def logon_params
    if superuser? || manager?
      params.require(:logon).permit(:worker_id, :site_id)
    else
      params.require(:logon).permit(:worker_id)
    end
  end
end
