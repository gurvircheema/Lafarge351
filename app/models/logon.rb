class Logon < ActiveRecord::Base
  #trying to find matching orientation
  def has_orientation?
    self.worker_id.orientations.map
  end
end
