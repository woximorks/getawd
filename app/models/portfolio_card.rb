class PortfolioCard < ApplicationRecord
    include PgSearch::Model
    pg_search_scope :search, against: [:portfolio_card_title, :portfolio_card_description]
end
