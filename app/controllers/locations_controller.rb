class LocationsController < ApplicationController
  
  def show
    @location = Location.find(params[:id])
    @workers_locations = WorkerLocation.where(location: params[:id]) 
    @workers = workers_arr
    @work_type_locations = WorkTypeLocation.where(location: params[:id]) 
    @work_types = work_types_arr
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

  def work_types_arr

    work_types_ids = []
    @work_type_locations.each do |w_l|
      work_types_ids << w_l.work_type
    end

    work_types = []
    work_types_ids.each do |id|
      work_types << WorkType.find_by(id: id)
    end 
    work_types 
  end

  def location_params
    params.require(:location).permit(:name, :adress, :customer)
  end  
end
