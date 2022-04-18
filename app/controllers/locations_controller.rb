class LocationsController < ApplicationController
  
  def show
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

  def location_params
    params.require(:location).permit(:name, :adress, :customer)
  end  
end
