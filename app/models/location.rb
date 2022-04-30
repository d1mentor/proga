class Location < ApplicationRecord
	has_many :instruments
	has_many :location_customers
	has_many :location_work_types
  	has_many :work_types, through: :location_work_types
  	has_many :location_materials
  	has_many :materials, through: :location_materials
end
