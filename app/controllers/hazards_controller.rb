class HazardsController < ApplicationController
  before_action :set_hazard, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @hazards = Hazard.all
  end

  def show
  end

  def new
    @hazard = Hazard.new
  end

  def edit
  end

  def create
    @hazard = Hazard.new(hazard_params)
    @hazard.save
    redirect_to hazards_path
  end

  def update
    @hazard.update(hazard_params)
    respond_with(@hazard)
  end

  def destroy
    @hazard.destroy
    redirect_to hazards_path
  end

  private
    def set_hazard
      @hazard = Hazard.find(params[:id])
    end

    def hazard_params
      params.require(:hazard).permit(:name)
    end
end
