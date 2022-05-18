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
    @worker = Worker.find(params[:id])
  end

  def update
    @worker = Worker.find(params[:id])
    @worker.update(permit_params)
    redirect_to("/workers/#{@worker.id}")
  end

  private

  def permit_params
    params.require(:worker).permit(:name, :adress, :position, :rate, :phone, :email, :status, :skills)
  end
end
