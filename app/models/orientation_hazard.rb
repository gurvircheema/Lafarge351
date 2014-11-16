class OrientationHazard < ActiveRecord::Base
	belongs_to :orientation
	belongs_to :hazard
end
