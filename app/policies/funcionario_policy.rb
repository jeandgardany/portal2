class FuncionarioPolicy < ApplicationPolicy
  def index?
  	user.administrador?
  end
  def users_index?
      user.atendente? | user.atendente?
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
