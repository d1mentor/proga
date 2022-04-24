class LocationsController < ApplicationController
  def show
    @location = Location.find(params[:id])
  end

  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(permit_params)
    @location.save
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
    params.require(:location).permit(:name, :adress, :start_date)
  end
end
