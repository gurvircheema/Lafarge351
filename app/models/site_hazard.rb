class SiteHazard < ActiveRecord::Base
	belongs_to :site
	belongs_to :hazard
end
