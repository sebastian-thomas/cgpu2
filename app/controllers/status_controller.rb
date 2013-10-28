class StatusController < ApplicationController
	require 'gchart'

	def index
	  if params[:list]
	  	batch = params[:list][:batch]
	  else
	    batch = '2010-14'
	  end
	  @batch = batch
	  @dataP = Hash.new
	  depts = Student.where(:batch => batch).uniq.pluck(:dept)
	  #depts = ['Computer Science','Chemical','Civil','Electrical' ,'Electronics','Mechanical','Production']
	  depts.each do |dept|
         @dataP[dept] = Hash.new
         companies = Student.find_by_sql ["select company_id , count(*) as num from placements where student_id in (select id from students where batch = ? and dept = ?) group by company_id", batch, dept]
         companies.each do |c|
           @dataP[dept][Company.where(:id => c.company_id).first.name] = c.num
         end
         
	  end
	  #companies = Student.find_by_sql("select company_id , count(*) as num from placements where student_id in (select id from students where batch = '?') group by company_id", batch)
	end
end
