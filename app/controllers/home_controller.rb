class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index

  	if current_user.role? :waiting
  		render "waiting"
  	else
  	#@companies = Companyvisit.all(:include => :company)
  	  @companies = Companyvisit.paginate(:page => params[:page], :per_page => 10).order('created_at DESC')
  	  s = Student.where(:email => current_user.email).first
      @details = 0;
      #details flag to check if user has alredy filled up all the datails.
      if s
        @details = 1;
  	    @sitting = CompanyAttending.where(:student_id => s.id)
      end
  	end
  end

  def attend
  	if current_user.role? :student
	  	if params[:visitid]
	  		#@c = CompanyAttending.create(:companyvisit=>params[:visitid],:student=>current_user.id)
	  		@c = CompanyAttending.new
	  		@c.companyvisit_id = params[:visitid]
	  		s = Student.where(:email => current_user.email).first
	  		@c.student_id = s.id
	  		@c.save
	  		redirect_to '/'
	  		#render action: 'index'
	  	end
	end
  end

end
