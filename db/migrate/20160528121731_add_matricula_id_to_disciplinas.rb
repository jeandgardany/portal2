class AddMatriculaIdToDisciplinas < ActiveRecord::Migration
  def change
    add_reference :disciplinas, :matricula, index: true, foreign_key: true
  end
end
