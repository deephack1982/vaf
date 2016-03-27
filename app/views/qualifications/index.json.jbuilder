json.array!(@qualifications) do |qualification|
  json.extract! qualification, :id, :tag, :name, :description, :patch
  json.url qualification_url(qualification, format: :json)
end
