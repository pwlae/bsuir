json.array!(@tours) do |tour|
  json.extract! tour, :id, :name, :source, :destenation, :price, :city_id
  json.url tour_url(tour, format: :json)
end
