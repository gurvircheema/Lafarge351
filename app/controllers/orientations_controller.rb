class OrientationsController < ApplicationController
  before_action :set_orientation, only: [:show]

  respond_to :html

  def show
  end

  def new
    @orientation = Orientation.new
  end

  def create
    @orientation = Orientation.new(orientation_params)
    @orientation.save
    redirect_to orientation_path
  end

  private
    def set_orientation
      @hazard = Orientation.find(params[:id])
    end

    def orientation_params
      params.require(:orientation).permit(:comment, :site_id)
    end
end
