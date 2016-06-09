json.array!(@solicitacao_matriculas) do |solicitacao_matricula|
  json.extract! solicitacao_matricula, :id, :valor, :ano, :semestre, :aluno_id, :matricula_id
  json.url solicitacao_matricula_url(solicitacao_matricula, format: :json)
end
