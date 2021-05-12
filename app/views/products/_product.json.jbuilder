json.extract! product, :id, :name, :des, :created_at, :updated_at
json.url product_url(product, format: :json)
