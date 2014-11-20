class WorkersController < ApplicationController
  before_action :require_manager
  before_action :set_worker, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @workers = superuser? ? Worker.all : manager.company.workers
  end

  def show
  end

  def new
    @worker = Worker.new
  end

  def edit
  end

  def create
    @worker = Worker.new(worker_params)
    @worker.company_id = manager.company.id if manager?
    if @worker.save
      flash[:notice] = "New worker added"
      redirect_to worker_path(@worker)
    else
      flash.now[:error]= "something went wrong"
      render 'new'
    end
  end

  def update
    @worker.update(worker_params)
    flash[:notice] = "Worker information updated"
    redirect_to worker_path(@worker)
  end

  def destroy
    @worker.destroy
    flash[:notice] = "worker removed"
    redirect_to workers_path
  end

  private
    def set_worker
      @worker = Worker.find(params[:id])
    end

    def worker_params
      common_params = [:first_name, :last_name, :contact, :email, :type, :company_id]
      common_params << :company_id if superuser?
      params.require(:worker).permit(*common_params)
    end
end
