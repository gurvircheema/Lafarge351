class Worker < ActiveRecord::Base
	has_many :orientations
  belongs_to :company

  validates :first_name, :last_name, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }

  VALID_CONTACT_REGEX = /\((\d{3})\)\s+(\d{3})-(\d{4})/
  validates :contact, format: { with: VALID_CONTACT_REGEX }


end