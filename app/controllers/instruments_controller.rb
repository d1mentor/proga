class InstrumentsController < ApplicationController
  def show
  end

  def index
    @instruments = Instrument.all
  end

  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = Instrument.new(permit_params)
    @instrument.save
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
    params.require(:instrument).permit(:name, :description, :buy_date, :price, :location_id, :worker_id)
  end
end
