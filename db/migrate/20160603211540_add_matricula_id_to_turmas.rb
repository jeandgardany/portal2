class AddMatriculaIdToTurmas < ActiveRecord::Migration
  def change
    add_reference :turmas, :matricula, index: true, foreign_key: true
  end
end
