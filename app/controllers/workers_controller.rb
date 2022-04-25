class WorkersController < ApplicationController
  def show
    @worker = Worker.find(params[:id])
  end

  def index
    @workers = Worker.all
  end

  def new
    @worker = Worker.new
  end

  def create
    @worker = Worker.new(permit_params)
    @worker.save
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
    params.require(:worker).permit(:name, :accord, :adress, :position, :rate, :phone, :email, :status, :skills)
  end
end
