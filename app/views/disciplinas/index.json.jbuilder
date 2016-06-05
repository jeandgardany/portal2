json.array!(@disciplinas) do |disciplina|
  json.extract! disciplina, :id, :nome, :codigo, :curso_id, :funcao_id, :funcionario_id
  json.url disciplina_url(disciplina, format: :json)
end
