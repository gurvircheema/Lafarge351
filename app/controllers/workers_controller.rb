class WorkersController < ApplicationController
  before_action :set_worker, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @workers = Worker.all
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
      params.require(:worker).permit(:first_name, :last_name, :contact, :email, :type, :company_id)
    end
end
