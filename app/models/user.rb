class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :roles
  has_many :students

  before_save :setup_role

  def role?(role)
      return !!self.roles.find_by_name(role.to_s)
  end

  # Default role is "Registered"
  def setup_role 
    if self.role_ids.empty?  
      #rid = RegProfile.where(:name => "default").first.id  
      #self.role_ids = Role.where(:name => "waiting").first.id
      self.role_ids = RegProfile.where(:name => "default").first.role_id 
    end
  end


  COURSE = ['NA','B.Tech','M.Tech','B.Arch','MCA']
  DEPT = ['NA','Computer Science','Chemical','Civil','Electrical' ,'Electronics','Mechanical','Production','Architecture','MCA']
  #BATCH = ['NA','2010-14','2011-15','2012-16','2013-17']
  BATCH = ['NA','2014','2015','2016','2017','2018']
end
