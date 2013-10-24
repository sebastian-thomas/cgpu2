class Student < ActiveRecord::Base
  belongs_to :user
  mount_uploader :picture, PictureUploader
  mount_uploader :resume, ResumeUploader

  validates_presence_of :name, :course, :dept, :batch, :gender, :ug_cgpa, :dob, :fname, :mname, :fjob, :mjob, :paddr, :mobile, :email
  #before_save :adv_modify

    COURSE = ['B.Tech','M.Tech','B.Arch','MCA']
	DEPT = ['Computer Science','Chemical','Civil','Electrical' ,'Electronics','Mechanical','Production','Architecture','MCA']
	BATCH = ['2010-14','2011-15','2012-16','2013-17', '2012-14','2013-15','2014-16']


	def self.to_csv(options = {})
	  CSV.generate(options) do |csv|
	    csv << column_names
	    all.each do |product|
	      csv << product.attributes.values_at(*column_names)
	    end
	  end
	end

end
