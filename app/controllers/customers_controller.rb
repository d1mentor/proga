class CustomersController < ApplicationController
  def show
  end

  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(permit_params)
    @customer.save
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
    params.require(:customer).permit(:name, :company, :position, :phone, :email)
  end
end
