class Ability
  include CanCan::Ability



  def initialize(user)
    user ||= User.new #If I dont pass a user into this, create a new user


    if user.role?(:admin)
        can :manage, :all #If admin, they can do everything like create, update, read, write, etc.



    elsif user.role? :user
      can :manage, Song do |song|
        song.user == user
      end

      can :create, Song
      can :read, :all

      can :manage, User do |user_object|
        user_object == user
      end


    else
      can :create, User
      can :read, :all
    end
  end

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

