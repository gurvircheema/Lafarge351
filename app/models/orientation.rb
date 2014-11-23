class Orientation < ActiveRecord::Base
  has_many :orientation_hazards
  has_many :hazards, through: :orientation_hazards

  belongs_to :worker
  belongs_to :site

  validates_presence_of :worker_id
  validates_uniqueness_of :worker_id, :scope => :site_id
  def valid_orientation?
    (self.site.hazards.map(&:id) - self.hazards.map(&:id)).empty? && self.updated_at > 1.year.ago
  end

  def self.valid_for_site_and_worker(site_id, worker_id)
    Orientation.where(site_id: site_id, worker_id: worker_id).select(&:valid_orientation?)
  end
end
