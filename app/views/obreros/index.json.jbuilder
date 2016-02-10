json.array!(@obreros) do |obrero|
  json.extract! obrero, :id, :nombre, :email, :nacimiento, :lat_hogar, :lon_hogar
  json.url obrero_url(obrero, format: :json)
end
