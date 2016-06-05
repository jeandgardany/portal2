json.array!(@alunos) do |aluno|
  json.extract! aluno, :id, :nome, :matricula, :data_nascimento, :endereco, :cpf, :rg, :user_id, :curso_id, :disciplina_id, :turma_id
  json.url aluno_url(aluno, format: :json)
end
