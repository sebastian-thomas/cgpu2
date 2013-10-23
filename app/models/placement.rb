class Placement < ActiveRecord::Base
  belongs_to :student
  belongs_to :company

  before_save :set_placed

  def set_placed
  	s = self.student
  	s.is_placed = true
  	s.save
  end
end
