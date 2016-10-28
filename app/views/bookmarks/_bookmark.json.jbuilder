json.extract! bookmark, :id, :name, :uri, :created_at, :updated_at
json.url bookmark_url(bookmark, format: :json)