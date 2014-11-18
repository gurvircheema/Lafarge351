class Login < ActiveRecord::Base
  devise :database_authenticatable, :rememberable, :trackable, :validatable
  belongs_to :loggable, polymorphic: true
end
