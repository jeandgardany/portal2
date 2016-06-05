json.array!(@funcaos) do |funcao|
  json.extract! funcao, :id, :cargo
  json.url funcao_url(funcao, format: :json)
end
