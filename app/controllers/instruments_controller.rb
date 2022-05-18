class InstrumentsController < ApplicationController
  def show
    @instrument = Instrument.find(params[:id])
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
    @instrument = Instrument.find(params[:id])
  end

  def update
    @instrument = Instrument.find(params[:id])
    @instrument.update(permit_params)
    redirect_to(instruments_path)
  end

  private

  def permit_params
    params.require(:instrument).permit(:name, :description, :buy_date, :price, :location_id, :worker_id)
  end
end
