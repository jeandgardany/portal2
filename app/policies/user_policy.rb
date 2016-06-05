class UserPolicy < ApplicationPolicy
  def index?
  	user.administrador?
  end
  def show?
  	user.administrador?
  end
  def edit?
  	user.administrador?
  end
  def update?
  	user.administrador?  	
  end
  def destroy?
  	user.administrador?
  end
  
  class Scope < Scope
    def resolve
      scope
    end
  end
end
