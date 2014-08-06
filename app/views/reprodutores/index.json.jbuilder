json.array!(@reprodutores) do |reprodutor|
  json.extract! reprodutor, :id
  json.url reprodutor_url(reprodutor, format: :json)
end
