json.array!(@matriculas) do |matricula|
  json.extract! matricula, :id, :numero, :inicio, :fim, :valor, :aluno_id, :funcionario_id
  json.url matricula_url(matricula, format: :json)
end
