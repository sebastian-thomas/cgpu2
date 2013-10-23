class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index

  	if current_user.role? :waiting
  		render "waiting"
  	else
  	#@companies = Companyvisit.all(:include => :company)
  	  @companies = Companyvisit.paginate(:page => params[:page], :per_page => 10).order('created_at DESC')
  	end
  end
end
