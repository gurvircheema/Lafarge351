class Login < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable, :trackable, :validatable

  belongs_to :site
  delegate :email, to: :loggable
  belongs_to :loggable, polymorphic: true

end
