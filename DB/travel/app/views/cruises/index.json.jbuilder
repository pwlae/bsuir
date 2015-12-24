json.array!(@cruises) do |cruise|
  json.extract! cruise, :id, :name, :source, :destenation, :price, :city_id
  json.url cruise_url(cruise, format: :json)
end
