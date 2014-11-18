class Worker < ActiveRecord::Base
	has_many :orientations
  belongs_to :company
end
