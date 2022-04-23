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
    @work_type = WorkType.new(permit_params)
    @work_type.save
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
    params.require(:work_type).permit(:name, :dimension)
  end
end
