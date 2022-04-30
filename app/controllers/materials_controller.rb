class MaterialsController < ApplicationController
  def new
    @material =  Material.new
  end

  def create
    @material = Material.new(permit_params)
    @material.save
    redirect_to(root_path)
  end

  def delete
  end

  def destroy
  end

  def show
  end

  def index
    @materials = Material.all
  end

  def edit
  end

  def update
  end

  private

  def permit_params
    params.require(:material).permit(:name, :dimension)
  end
end
