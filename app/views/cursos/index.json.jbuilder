json.array!(@cursos) do |curso|
  json.extract! curso, :id, :nome, :codigo, :duracao, :tipo
  json.url curso_url(curso, format: :json)
end
