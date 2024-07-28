json.extract! article, :id, :article_title, :article_body, :article_description, :article_image_url, :created_at, :updated_at
json.url article_url(article, format: :json)
