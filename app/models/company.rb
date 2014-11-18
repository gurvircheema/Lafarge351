class Company < ActiveRecord::Base
	has_many :employees
	has_many :contractors
	has_many :managers

  has_many :workers
	# has_many :sites
end
