json.array!(@ideas_presentadas) do |idea_presentada|
  json.extract! idea_presentada, :id, :nombre, :descripcion, :emprendedor, :slug, :startup_weekend_id
  json.url idea_presentada_url(idea_presentada, format: :json)
end
