json.array!(@flights) do |flight|
  json.extract! flight, :id, :name, :airport_id
  json.url flight_url(flight, format: :json)
end
