json.array!(@pilots) do |pilot|
  json.extract! pilot, :id, :name, :email, :rank
  json.url pilot_url(pilot, format: :json)
end
