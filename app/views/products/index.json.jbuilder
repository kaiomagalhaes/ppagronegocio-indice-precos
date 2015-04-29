json.array!(@products) do |product|
  json.extract! product, :id, :vulgarName, :cientificName
  json.url product_url(product, format: :json)
end
