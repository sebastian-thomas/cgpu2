class ListController < ApplicationController
  before_filter :authenticate_user!
  def index
  	if params[:list]
      if params[:list][:dept] == "NA"
         students = Student.where(:batch => params[:list][:batch])
      else
        students = Student.where(:batch => params[:list][:batch] , :dept => params[:list][:dept])
      end

      if params[:cgpa]
        @students = students.where('ug_cgpa > ?', params[:cgpa])
      end
  	end
  	respond_to do |format|
	    format.html
	    format.csv { send_data @students.to_csv }
	    format.xls # { send_data @products.to_csv(col_sep: "\t") }
    end
  end

  def export
  	if params[:student_ids]
       #@students = Student.where(:batch => params[:list][:batch] , :dept => params[:list][:dept])
       @students = Student.find(params[:student_ids])
  	end
  	respond_to do |format|
	    format.html
	    format.csv { send_data @students.to_csv }
	    format.xls # { send_data @products.to_csv(col_sep: "\t") }
    end
  end
end
