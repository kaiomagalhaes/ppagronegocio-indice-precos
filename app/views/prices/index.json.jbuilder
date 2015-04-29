json.array!(@prices) do |price|
  json.extract! price, :id, :date, :value
  json.url price_url(price, format: :json)
end
