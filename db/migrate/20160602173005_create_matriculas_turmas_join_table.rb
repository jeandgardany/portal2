class CreateMatriculasTurmasJoinTable < ActiveRecord::Migration
  def change
    create_join_table :matriculas, :turmas, id: false do |t|
      t.index [:matricula_id, :turma_id]
      t.index [:turma_id, :matricula_id]
    end
  end
end
