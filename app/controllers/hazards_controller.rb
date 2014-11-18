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
    if @site.save
      flash[:notice] = "New hazard added"
      redirect_to site_path(@site)
    else
      flash.now[:error] = "Something went wrong"
      render 'new'
    end
  end

  def update
    @hazard.update(hazard_params)
    flash[:notice] = "Hazard information updated"
    respond_with(@hazard)
  end

  def destroy
    @hazard.destroy
    flash[:notice] = "Hazard removed"
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
