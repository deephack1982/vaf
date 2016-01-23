json.array!(@missions) do |mission|
  json.extract! mission, :id, :title, :date, :start_time, :body, :channel
  json.url mission_url(mission, format: :json)
end
