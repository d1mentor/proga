class WorkersController < ApplicationController
  def show
  end

  def index
    @workers = Worker.all
  end

  def new
    @worker = Worker.new
  end

  def create
    @worker = Worker.new(worker_params)
    @worker.save
    redirect_to(workers_path)
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private

  def worker_params
    params.require(:worker).permit(:name, :contacts, :documents)
  end  
end
