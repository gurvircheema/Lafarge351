class Site < ActiveRecord::Base
	# belogs_to :company
	has_many :site_hazards
	has_many :hazards, through: :site_hazards
	has_many :orientations
  accepts_nested_attributes_for :orientations

	belongs_to :manager
	has_many :logins
end
