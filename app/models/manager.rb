class Manager < Worker
	has_one :login
  validates :email, presence: true
end
