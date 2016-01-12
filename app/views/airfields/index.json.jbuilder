json.array!(@airfields) do |airfield|
  json.extract! airfield, :id, :name, :airfield_type, :ATC_channel, :ATIS_channel
  json.url airfield_url(airfield, format: :json)
end
