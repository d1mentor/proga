class Diary < ApplicationRecord
	belongs_to :location_work_type
	belongs_to :worker
	belongs_to :salary
end
