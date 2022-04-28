class PayoutsController < ApplicationController
  def show
  end

  def index
  end

  def new
    @payout = Payout.new
  end

  def create
    @payout = Payout.new(permit_params)
    @payout.save
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

  def permit_params
    params.require(:payout).permit(:location_work_type_id, :size, :payout_date)
  end
end
