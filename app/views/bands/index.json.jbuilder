json.array!(@bands) do |band|
  json.extract! band, :id, :name, :bio, :act, :hometown, :country, :active_since
  json.url band_url(band, format: :json)
end
