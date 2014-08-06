json.array!(@matrizes) do |matriz|
  json.extract! matriz, :id
  json.url matriz_url(matriz, format: :json)
end
