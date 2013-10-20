class ListController < ApplicationController
  def index
  	if params[:list]
       @students = Student.where(:batch => params[:list][:batch] , :dept => params[:list][:dept])
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
