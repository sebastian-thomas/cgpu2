class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role? :superadmin      
      can :access, :rails_admin   # grant access to rails_admin
      can :dashboard
      can :manage, :all
    elsif user.role? :placement
      can :access, :rails_admin   # grant access to rails_admin
      can :dashboard
      can :read , Student
      can :manage ,Company
      can :manage ,Companyvisit
      can :manage ,CompanyAttending
    elsif user.role? :classrep
        can :manage , :classrep
        can :manage, Student ,:batch => user.batch
    elsif user.role? :student
        can :manage, Student ,:email => user.email
    end
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
