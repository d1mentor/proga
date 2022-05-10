class ExpendituresController < ApplicationController
  def show
  end

  def index
    @expenditures = Expenditure.all
  end

  def new
    @expenditure = Expenditure.new
  end

  def create
    @expenditure = Expenditure.new(permit_params)
    @expenditure.save
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
    params.require(:expenditure).permit(:name, :exp_date, :price)
  end
end
