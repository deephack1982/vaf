json.array!(@airframe_types) do |airframe_type|
  json.extract! airframe_type, :id, :name, :callsign, :category, :cost, :maintenance_hours
  json.url airframe_type_url(airframe_type, format: :json)
end
