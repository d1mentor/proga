class LocationsController < ApplicationController
  
  def show
    @location = Location.find(params[:id])
    @workers_locations = WorkerLocation.where(location: params[:id]) 
    @workers = workers_arr
  end

  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    @location.save
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

  def workers_arr

    workers_ids = []
    @workers_locations.each do |w_l|
      workers_ids << w_l.worker
    end

    workers = []
    workers_ids.each do |id|
      workers << Worker.find_by(id: id)
    end 
    workers 
  end

  def location_params
    params.require(:location).permit(:name, :adress, :customer)
  end  
end
