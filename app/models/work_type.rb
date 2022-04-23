class WorkType < ApplicationRecord
	has_many :location_work_types
	has_many :locations, through: :location_work_types
end
