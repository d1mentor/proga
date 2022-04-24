class LocationWorkTypesController < ApplicationController
  def show
  end

  def index
  end

  def new
    @location_work_type = LocationWorkType.new
  end

  def create
    @location_work_type = LocationWorkType.new(permit_params)
    @location_work_type.paid = false
    @location_work_type.progress = 0
    @location_work_type.save
    redirect_to(root_path)
  end

  def delete
  end

  def destroy
  end

  def edit
  end

  def update
  end

  private

  def permit_params
    params.require(:location_work_type).permit(:location_id, :work_type_id, :price, :start_date, :size)
  end
end
