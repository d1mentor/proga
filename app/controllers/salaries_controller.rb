class SalariesController < ApplicationController
  def show
  end

  def index
    @salaries = Salary.all
  end

  def new
    @worker = Worker.find(params[:worker_id])
    @salary = Salary.new
    @date_validator = Date.new(Time.current.year, params[:month].to_i).all_month.to_a
    @worker_diaries = Diary.where(worker_id: @worker.id, diary_date: @date_validator, salary_id: 1)
  end

  def create
    @salary = Salary.new(permit_params)
    @salary.save
    diaries_update(params[:diary_ids], @salary)
    redirect_to(salaries_path)
  end

  def delete
  end

  def destroy
  end

  def edit
    @salary = Salary.find(params[:id])
    @worker = @salary.worker
  end

  def update
    @salary = Salary.find(params[:id])
    @salary.update(permit_params)
    redirect_to(salaries_path)
  end

  private

  def diaries_update(diaries, salary)
    diaries_obj = Diary.where(id: diaries)
    diaries_obj.each do |diary|
      diary.update(salary_id: salary.id)
    end  
  end

  def permit_params
    params.require(:salary).permit(:worker_id, :size, :salary_date, diary_ids: [])
  end
end
