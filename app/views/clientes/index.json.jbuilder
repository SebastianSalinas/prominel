json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nombre, :contacto, :fono, :email
  json.url cliente_url(cliente, format: :json)
end
