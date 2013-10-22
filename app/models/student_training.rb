class StudentTraining < ActiveRecord::Base
  belongs_to :student
  belongs_to :training
end
