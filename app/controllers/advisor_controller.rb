class AdvisorController < ApplicationController
  authorize_resource :class => false

  def index
  	if params[:listadv]
       @students = Student.where(:batch => params[:listadv][:batch] , :dept => params[:listadv][:dept])
  	end
  end

  def approve
  	if params[:student_ids]
  		if current_user.role? :advisor 
  			students = Student.find(params[:student_ids])
  			students.each do |s|
  				s.adv_approved = 1
  				s.save
  			end
  			flash[:notice] = "Approved student details"
  			redirect_to action: 'index' 
  		end
    end
  end
end
