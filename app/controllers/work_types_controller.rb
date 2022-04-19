class WorkTypesController < ApplicationController
  def show
  end

  def index
    @work_types = WorkType.all
  end

  def new
    @work_type = WorkType.new
  end

  def create
    @work_type = WorkType.new(work_type_params)
    @work_type.save
    redirect_to(work_types_path)
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  def work_type_params
    params.require(:work_type).permit(:name, :price, :dimension)
  end 
end
