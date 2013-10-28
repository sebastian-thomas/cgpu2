class Company < ActiveRecord::Base
	has_many :placements
	has_many :students , through: :placements
end
