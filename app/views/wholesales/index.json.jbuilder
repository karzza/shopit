json.array!(@wholesales) do |wholesale|
  json.extract! wholesale, :id, :name, :address, :phone, :email
  json.url wholesale_url(wholesale, format: :json)
end
