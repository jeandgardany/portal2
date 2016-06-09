json.array!(@mensalidades) do |mensalidade|
  json.extract! mensalidade, :id, :pago, :mes, :ano, :aluno_id, :solicitacao_matricula_id
  json.url mensalidade_url(mensalidade, format: :json)
end
