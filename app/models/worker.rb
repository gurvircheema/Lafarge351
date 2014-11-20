class Worker < ActiveRecord::Base
	has_many :orientations
  belongs_to :company
  has_many :logins, as: :loggable

  validates :first_name, :last_name, presence: true
  validates_presence_of :company

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }

  VALID_CONTACT_REGEX = /\((\d{3})\)\s+(\d{3})-(\d{4})/
  validates :contact, format: { with: VALID_CONTACT_REGEX }

  scope :non_managers, -> { where.not(type: Manager.name) }

  def full_name
    "#{first_name} #{last_name}"
  end

  def name_with_designation
    "[#{type}] #{full_name}"
  end
end
