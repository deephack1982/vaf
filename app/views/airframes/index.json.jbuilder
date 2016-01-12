json.array!(@airframes) do |airframe|
  json.extract! airframe, :id, :airframe_type_id, :tail_number, :location, :squadron_id, :hours, :condition
  json.url airframe_url(airframe, format: :json)
end
