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
    @worker_works = Diary.where(worker_id: @worker.id, diary_date: @date_validator)
    @hours_per_month = hours(@worker_works)
    @gesheft = gesheft(@worker_works)
    @accord_salary = accord_salary(@worker_works)
  end

  def create
    @salary = Salary.new(permit_params)
    @salary.save
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

  def accord_salary(diaries)
    salary = 0
    diaries.each do |diary|
      salary += diary.size*diary.location_work_type.accord_price
    end 
    salary
  end

  def gesheft(diaries)
    gesheft = 0
    diaries.each do |diary|
      gesheft += diary.size*diary.location_work_type.price
    end 
    gesheft
  end

  def hours(diaries)
    hours = 0
    diaries.each do |diary|
      hours += diary.time.to_i
    end  
    hours
  end

  def permit_params
    params.require(:salary).permit(:worker_id, :size, :salary_date)
  end
end
