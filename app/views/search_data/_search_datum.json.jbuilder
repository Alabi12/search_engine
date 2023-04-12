json.extract! search_datum, :id, :user_id, :article_id, :created_at, :updated_at
json.url search_datum_url(search_datum, format: :json)
