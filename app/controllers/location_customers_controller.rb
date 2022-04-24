class LocationCustomersController < ApplicationController
  def show
  end

  def index
  end

  def new
    @location_customer = LocationCustomer.new
  end

  def create
    @location_customer = LocationCustomer.new(permit_params)
    @location_customer.save
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
    params.require(:location_customer).permit(:location_id, :customer_id)
  end
end
