class Salary < ApplicationRecord
	belongs_to :worker
	has_many :diaries
end
