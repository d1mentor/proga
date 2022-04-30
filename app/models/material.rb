class Material < ApplicationRecord
	has_many :location_materials
	has_many :locations, through: :location_materials
end
