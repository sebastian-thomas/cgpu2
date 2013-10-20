class HomeController < ApplicationController
  def index
  	#@companies = Companyvisit.all(:include => :company)
  	@companies = Companyvisit.paginate(:page => params[:page], :per_page => 2).order('created_at DESC')
  end
end
