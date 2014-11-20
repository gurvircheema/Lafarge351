class LoginsController < ApplicationController
  before_action :check_access, :load_resource

  def new
    @login = Login.new(loggable: @resource)
    @login.email = @resource.email if @resource.is_a? Manager
  end

  def create
    @login = Login.new(login_params)
    @login.loggable = @resource
    if @login.save
      if @resource.is_a? Manager
        redirect_to worker_path(@resource), notice: "Login created successfully"
      else
        redirect_to @resource, notice: "Login created successfully"
      end
    else
      render 'new'
    end
  end

  protected

  def check_access
    if (params[:worker_id].present? && !superuser?) && !manager?
      redirect_to root_path, alert: "You are not allowed to perform this action"
    end
  end

  def load_resource
    if params[:worker_id].present?
      @resource = Manager.find(params[:worker_id])
      if !@resource.logins.empty?
        redirect_to worker_path(@resource), alert: "Login exists for this user"
      end
    elsif params[:site_id].present?
      @resource = Site.find(params[:site_id])
    end
  end

  def login_params
    params.require(:login).permit(:email, :password, :password_confirmation)
  end
end
