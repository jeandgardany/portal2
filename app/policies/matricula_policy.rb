class MatriculaPolicy < ApplicationPolicy
  def index?
  	user.administrador?
  end
  def show?
  	user.administrador?
  end
  def edit?
  	user.administrador? | user.atendente?
  end
  def update?
  	user.administrador? | user.atendente? 	
  end
  def destroy?
  	user.administrador!
  end
  
  class Scope < Scope
    def resolve
      scope
    end
  end
end
