json.array!(@joining_forms) do |joining_form|
  json.extract! joining_form, :id, :age, :english_proficiency, :available, :software, :years_experience, :interests, :notes
  json.url joining_form_url(joining_form, format: :json)
end
