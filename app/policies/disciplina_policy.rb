class DisciplinaPolicy < ApplicationPolicy
 	def index?
  		user.administrador? or user.coordenador?
  	end
  	def show?
  		user.administrador? or user.coordenador?
  	end
	def edit?
  		user.administrador? or user.coordenador?
  	end
  	def update?
  		user.administrador? or user.coordenador?
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
