json.array!(@organizers) do |organizer|
  json.extract! organizer, :id, :name
  json.url organizer_url(organizer, format: :json)
end
