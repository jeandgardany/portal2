class AlunoPolicy < ApplicationPolicy
  def index?
  	user.administrador?
  end
  def show?
    user.administrador? | user.coordenador?
  end
  def edit?
    user.administrador? | user.coordenador?
  end
  def update?
  	user.administrador?	| user.coordenador?
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
