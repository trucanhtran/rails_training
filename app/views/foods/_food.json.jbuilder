json.extract! food, :id, :name, :price, :rate, :created_at, :updated_at
json.url food_url(food, format: :json)
