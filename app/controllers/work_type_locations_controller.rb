class WorkTypeLocationsController < ApplicationController
  def show
  end

  def index
  end

  def new
    @work_type_locations = WorkTypeLocation.new
  end

  def create
    @work_type_locations = WorkTypeLocation.new(work_type_locations_params)
    @work_type_locations.save!
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

  def work_type_locations_params
    params.require(:work_type_location).permit(:work_type, :location)
  end 
end
