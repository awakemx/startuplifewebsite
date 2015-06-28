json.array!(@startup_weekends) do |startup_weekend|
  json.extract! startup_weekend, :id, :titulo, :logo, :descripcion, :slug
  json.url startup_weekend_url(startup_weekend, format: :json)
end
