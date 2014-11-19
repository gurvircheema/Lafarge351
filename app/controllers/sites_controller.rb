class SitesController < ApplicationController
  before_action :require_superuser, only: [:new, :create, :destroy]
  before_action :require_manager
  before_action :set_site, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @sites = Site.all
  end

  def show
    @orientations = @site.orientations
    @hazards = @site.hazards
  end

  def new
    @site = Site.new
  end

  def edit
  end

  def create
    @site = Site.new(site_params)

    if @site.save
      flash[:notice] = "New site added"
      redirect_to site_path(@site)
    else
      flash.now[:error]= "something went wrong"
      render 'new'
    end
  end

  def update
    @site.update(site_params)
    flash[:notice] = "Site information updated"
    respond_with(@site)
  end

  def destroy
    @site.destroy
    flash[:notice] = "Site removed"
    redirect_to sites_path
  end

  private
    def set_site
      @site = Site.find(params[:id])
    end

    def site_params
      if superuser?
        params.require(:site).permit(:name, :manager_id, :company_id, :hazard_ids => [])
      else
        params.require(:site).permit(:hazard_ids => [])
      end
    end
end
