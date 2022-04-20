class WorkerLocationsController < ApplicationController
  def show
  end

  def index
  end

  def new
    @worker_location = WorkerLocation.new
  end

  def create
    @worker_location = WorkerLocation.new(worker_location_params)
    @worker_location.save
    redirect_to(root_path)
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

  def worker_location_params
    params.require(:worker_location).permit(:worker, :location)
  end 
end
