class LocationWorkType < ApplicationRecord
	belongs_to :location
	belongs_to :work_type
	has_many :diaries
end
