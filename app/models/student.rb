class Student < ActiveRecord::Base
  belongs_to :user
    COURSE = ['B.Tech','M.Tech','B.Arch','MCA']
	DEPT = ['Computer Science','Chemical','Civil','Electrical' ,'Electronics','Mechanical','Production','Architecture','MCA']
	BATCH = ['2010-14','2011-15','2012-16','2013-17']



	def self.to_csv(options = {})
	  CSV.generate(options) do |csv|
	    csv << column_names
	    all.each do |product|
	      csv << product.attributes.values_at(*column_names)
	    end
	  end
	end

end
