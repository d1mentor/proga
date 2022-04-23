class LocationCustomer < ApplicationRecord
	belongs_to :customer
	belongs_to :location
end
