class AddUrlToPortfolioCard < ActiveRecord::Migration[7.1]
  def change
    add_column :portfolio_cards, :portfolio_card_url, :string
  end
end
