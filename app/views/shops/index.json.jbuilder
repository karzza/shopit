json.array!(@shops) do |shop|
  json.extract! shop, :id, :name, :address, :industry, :branch
  json.url shop_url(shop, format: :json)
end
