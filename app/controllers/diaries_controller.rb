class DiariesController < ApplicationController
  def show
  end

  def index
    @diaries = Diary.all
  end

  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.new(permit_params)
    @diary.salary_id = Salary.find(1).id
    @diary.save!
    update_location_work_type(@diary)
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

  def update_location_work_type(diary)
    if diary.location_work_type.size.to_f > 0
      progress_percent = diary.location_work_type.size.to_f / 100
    else  
      progress_percent = (diary.location_work_type.size.to_f + 0.1) / 100
    end

    day_progress = 0.00

    if diary.size.to_f > 0
      day_progress += (diary.size.to_f / progress_percent)
    else
      day_progress += ((diary.size.to_f + 0.1) / progress_percent)
    end
    current_progress = diary.location_work_type.progress + day_progress
    LocationWorkType.update(diary.location_work_type.id, :progress => "#{current_progress.to_i}")
  end

  def permit_params
    params.require(:diary).permit(:size, :accord, :time, :worker_id, :location_work_type_id, :diary_date)
  end
end
