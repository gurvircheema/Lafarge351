class LogonsController < ApplicationController
  before_action only: [ :index, :new, :create, :destroy]

  respond_to :html

  def index
    @logons = Logon.all
  end

  def new
    @logon = Logon.new
  end

  def create
    @logon = Logon.new(logon_params)
    @site = Site.find(5)
    @logon.site_id = @site.id
    if @logon.save
      flash[:notice] = " Employee logged on"
      redirect_to logons_path
    else
      flash.now[:error]= "something went wrong"
      render 'new'
    end
  end

  def destroy
    @logon = Logon.find(params[:id])
    @logon.destroy
    flash[:notice] = "Signed Out"
    redirect_to logons_path
  end

  private

    def logon_params
      params.require(:logon).permit(:worker_id, :site_id, :logout_time)
    end
end
