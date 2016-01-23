json.array!(@taskings) do |tasking|
  json.extract! tasking, :id, :callsign, :mission_id, :airframe_type_id, :number, :tasking_type, :notes, :channel, :primary_base_id, :alternate_base_id
  json.url tasking_url(tasking, format: :json)
end
