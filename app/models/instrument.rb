class Instrument < ApplicationRecord
	belongs_to :location
	belongs_to :worker
end
