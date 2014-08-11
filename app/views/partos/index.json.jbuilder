json.array!(@partos) do |parto|
  json.extract! parto, :id
  json.url parto_url(parto, format: :json)
end
