json.array!(@turmas) do |turma|
  json.extract! turma, :id, :codigo, :turno, :semestre, :capacidade, :funcionario_id, :disciplina_id
  json.url turma_url(turma, format: :json)
end
