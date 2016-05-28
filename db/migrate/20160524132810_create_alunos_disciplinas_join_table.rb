class CreateAlunosDisciplinasJoinTable < ActiveRecord::Migration
  def change
  	create_join_table :alunos, :disciplinas, id: false do |t|
  	  t.index [:aluno_id, :disciplina_id]
      t.index [:disciplina_id, :aluno_id]
	end
  end
end
