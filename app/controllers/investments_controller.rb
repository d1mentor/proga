class InvestmentsController < ApplicationController
  def show
  end

  def index
    @investments = Investment.all
  end

  def new
    @investment = Investment.new
  end

  def create
    @investment = Investment.new(permit_params)
    @investment.save
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
    params.require(:investment).permit(:description, :inv_date, :size)
  end
end
