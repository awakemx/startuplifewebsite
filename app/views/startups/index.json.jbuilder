json.array!(@startups) do |startup|
  json.extract! startup, :id, :user_id, :nombre, :descripcion, :pagina, :slug, :startup_weekend_id
  json.url startup_url(startup, format: :json)
end
