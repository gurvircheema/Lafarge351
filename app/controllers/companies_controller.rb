class CompaniesController < ApplicationController
  before_action :require_superuser
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @companies = Company.all
  end

  def show
  end

  def new
    @company = Company.new
  end

  def edit
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to company_path(@company)
      flash[:notice] = "New company added"
    else
      flash.now[:error] = "Something went wrong"
      render 'new'
    end
  end

  def update
    @company.update(company_params)
    flash[:notice] = "Company information updated"
  end

  def destroy
    @company.destroy
    flash[:notice] = "Company deleted"
    redirect_to companies_path
  end

  private
    def set_company
      @company = Company.find(params[:id])
    end

    def company_params
      params.require(:company).permit(:name, :address)
    end
end
