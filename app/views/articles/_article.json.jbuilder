json.extract! article, :id, :name, :description, :body, :journal_id, :created_at, :updated_at
json.url article_url(article, format: :json)

