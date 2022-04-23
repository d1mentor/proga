class Worker < ApplicationRecord
	has_many :instruments
	has_many :salaries
end
