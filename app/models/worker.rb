class Worker < ApplicationRecord
	has_many :instruments
	has_many :salaries
	has_many :diaries
end
