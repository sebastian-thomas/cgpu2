class Student < ActiveRecord::Base
  belongs_to :user
    COURSE = ['B.Tech','M.Tech','B.Arch','MCA']
	DEPT = ['Computer Science','Chemical','Civil','Electrical' ,'Electronics','Mechanical','Production','Architecture','MCA']
	BATCH = ['2010-14','2011-15','2012-16','2013-17']
end
