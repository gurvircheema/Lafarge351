class Manager < Worker
  validates :email, presence: true
end
