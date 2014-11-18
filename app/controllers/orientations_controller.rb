class OrientationsController < ApplicationController
  before_action :set_orientation, :set_site, only: [:show]

  respond_to :html

  def show
  end

  def new
    @orientation = Orientation.new
  end

  def create
    @orientation = Orientation.new(orientation_params)
    @orientation.site = @site
    if @orientation.save
      flash[:notice] = "Orientation completed "
      redirect_to orientation_path(@orientation)
    else
      flash.now[:error] = "Something went wrong"
      render 'new'
    end
  end

  private
    def set_orientation
      @orientation = Orientation.find(params[:id])
    end

    def set_site
      @site = Site.find(params[:site_id])
    end

    def orientation_params
      params.require(:orientation).permit(:comment)
    end
end
