json.array!(@citytrips) do |citytrip|
  json.extract! citytrip, :id, :name, :source, :destenation, :price, :city_id
  json.url citytrip_url(citytrip, format: :json)
end
