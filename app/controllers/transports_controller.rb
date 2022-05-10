class TransportsController < ApplicationController
  def show
  end

  def index
    @transports = Transport.all
  end

  def new
    @transport = Transport.new
  end

  def create
    @transport = Transport.new(permit_params)
    @transport.save
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
    params.require(:transport).permit(:name, :description, :price, :buy_date, :to_date, :insurance_date)
  end
end
