class CustomersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
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
    redirect_to("/customers")
  end

  def delete
    @customer = Customer.find(params[:id])
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to("/customers")
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update(permit_params)
    redirect_to("/customers/#{@customer.id}")
  end

  private

  def permit_params
    params.require(:customer).permit(:name, :company, :position, :phone, :email)
  end
end
