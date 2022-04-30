class LocationMaterialsController < ApplicationController
  def new
    @location_material = LocationMaterial.new
  end

  def create
    @location_material = LocationMaterial.new(permit_params)
    @location_material.save
    redirect_to(root_path)
  end

  def delete
  end

  def destroy
  end

  def show
  end

  def index
  end

  def edit
  end

  def update
  end

  private

  def permit_params
    params.require(:location_material).permit(:location_id, :material_id, :count, :price, :description, :buy_date)
  end
end
