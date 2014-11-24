class Logon < ActiveRecord::Base
  belongs_to :worker
  belongs_to :site

  validates_presence_of :worker, :site

  validate :valid_orientation

  scope :active, -> { where(:logout_time => nil) }

  def valid_orientation
    if worker.present? && site.present?
      if Orientation.valid_for_site_and_worker(site.id, worker.id).empty?
        self.errors.add(:worker_id, "does not have valid orientation, contact Manager for adding one.")
      end
    end
  end
end
