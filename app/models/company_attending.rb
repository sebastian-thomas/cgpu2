class CompanyAttending < ActiveRecord::Base
  belongs_to :companyvisit
  belongs_to :student
end
