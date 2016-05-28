json.array!(@funcionarios) do |funcionario|
  json.extract! funcionario, :id, :nome, :matricula, :nascimento, :endereco, :admissao, :user_id, :funcao_id
  json.url funcionario_url(funcionario, format: :json)
end
