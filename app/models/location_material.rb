class LocationMaterial < ApplicationRecord
	belongs_to :material
	belongs_to :location
end
