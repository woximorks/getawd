json.extract! portfolio_card, :id, :portfolio_card_title, :portfolio_card_description, :portfolio_card_image_url, :created_at, :updated_at
json.url portfolio_card_url(portfolio_card, format: :json)
