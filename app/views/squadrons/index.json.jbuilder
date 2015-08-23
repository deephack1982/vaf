json.array!(@squadrons) do |squadron|
  json.extract! squadron, :id, :name, :aircraft
  json.url squadron_url(squadron, format: :json)
end
