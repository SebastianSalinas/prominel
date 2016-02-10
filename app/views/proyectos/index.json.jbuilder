json.array!(@proyectos) do |proyecto|
  json.extract! proyecto, :id, :nombre, :presupuesto, :obrero_id, :lat_ubicacion, :lon_ubicacion
  json.url proyecto_url(proyecto, format: :json)
end
