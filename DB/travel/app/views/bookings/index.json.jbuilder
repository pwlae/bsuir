json.array!(@bookings) do |booking|
  json.extract! booking, :id, :name, :city_id, :price_id
  json.url booking_url(booking, format: :json)
end
