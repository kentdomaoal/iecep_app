json.array!(@albums) do |album|
  json.extract! album, :name, :compiled_on
  json.url album_url(album, format: :json)
end