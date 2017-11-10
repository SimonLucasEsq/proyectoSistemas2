class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)
     if user.has_role? :admin
       can :manage,:all
       # can :read, User
      #  can :create,User
     #   can :update, User do |u|
    #      user==u
   #     end
        #cannot :create,User
        #cannot :destroy,User

  #      can :destroy,User do |u|
 #             user==u
#        end
    end
     if user.has_role? :AdminDptoExt
        can :read, User
    end
  end
end
