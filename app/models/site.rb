class Site < ActiveRecord::Base
	belongs_to :company

	has_many :site_hazards
	has_many :hazards, through: :site_hazards
	has_many :orientations

	belongs_to :manager
	has_many :logins

  validates :name, :manager_id, presence: true

end
