class ClassrepController < ApplicationController
  authorize_resource :class => false
  
  def index		  
	  @students = Student.where( batch: current_user.batch, course: current_user.course, dept: current_user.dept)
  end
  
end
