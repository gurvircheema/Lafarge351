class Hazard < ActiveRecord::Base
	has_many :orientation_hazards
	has_many :orientations, through: :orientation_hazards

	has_many :site_hazards
	has_many :sites, through: :site_hazards
end

# Site -- SiteHazard -- Hazard

