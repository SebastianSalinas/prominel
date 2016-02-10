json.array!(@agentes) do |agente|
  json.extract! agente, :id, :nombre, :vendedor, :fono, :email
  json.url agente_url(agente, format: :json)
end
