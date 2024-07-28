class CreatePortfolioCards < ActiveRecord::Migration[7.1]
  def change
    create_table :portfolio_cards do |t|
      t.string :portfolio_card_title
      t.text :portfolio_card_description
      t.string :portfolio_card_image_url

      t.timestamps
    end
  end
end
