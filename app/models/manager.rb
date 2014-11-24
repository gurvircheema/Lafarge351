class Manager < Worker
  validates :email, presence: true

  has_many :sites
end
