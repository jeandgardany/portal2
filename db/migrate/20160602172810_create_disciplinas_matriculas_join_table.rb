class CreateDisciplinasMatriculasJoinTable < ActiveRecord::Migration
  def change
  	create_join_table :disciplinas, :matriculas, id: false do |t|
  	  t.index [:disciplina_id, :matricula_id]
  	  t.index [:matricula_id, :disciplina_id]
	end
  end
end
