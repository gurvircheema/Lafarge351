class OrientationsController < ApplicationController
  before_action :require_manager
  before_action :set_site

  respond_to :html

  def show
    @orientation = Orientation.find(params[:id])
  end

  def new
    @orientation = Orientation.new
  end

  def create
    @orientation = Orientation.new(orientation_params)
    @orientation.site = @site
    if @orientation.save
      flash[:notice] = "Orientation completed"
      redirect_to site_orientation_path(@site, @orientation)
    else
      flash.now[:error] = "Something went wrong, check the errors"
      render 'new'
    end
  end

  private

  def set_site
    @site = Site.find(params[:site_id])
  end

  def orientation_params
    params.require(:orientation).permit(:worker_id, :hazard_ids => [])
  end
end
