json.extract! beermark, :id, :name, :malts, :alcohol, :category_id, :kind_id, :created_at, :updated_at
json.url beermark_url(beermark, format: :json)
