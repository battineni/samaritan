json.array!(@venues) do |venue|
  json.extract! venue, :id, :name, :venue_type, :about, :location, :city, :state, :country
  json.url venue_url(venue, format: :json)
end
