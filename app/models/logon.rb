class Logon < ActiveRecord::Base
  belongs_to :worker
  belongs_to :site

  validates_presence_of :worker, :site

  validate :valid_orientation
  validate :no_current_logon

  scope :active, -> { where(:logout_time => nil) }
  scope :recent, -> { where('created_at > ?', Date.today.beginning_of_day) }

  def valid_orientation
    if worker.present? && site.present?
      if Orientation.valid_for_site_and_worker(site.id, worker.id).empty?
        self.errors.add(:worker_id, "does not have valid orientation, contact Manager for adding one.")
      end
    end
  end

  def no_current_logon
    if worker.present? && site.present? && self.new_record?
      if Logon.where(worker: worker, site: site, logout_time: nil).count > 0
        self.errors.add(:worker_id, "is already logged in.")
      end
    end
  end
end
