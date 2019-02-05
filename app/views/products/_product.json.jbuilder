json.extract! product, :id, :pro_name, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
