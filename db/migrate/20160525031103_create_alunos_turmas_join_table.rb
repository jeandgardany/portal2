class CreateAlunosTurmasJoinTable < ActiveRecord::Migration
  def change
    create_join_table :alunos, :turmas, id: false do |t|
      t.index [:aluno_id, :turma_id]
      t.index [:turma_id, :aluno_id]
    end
  end
end
