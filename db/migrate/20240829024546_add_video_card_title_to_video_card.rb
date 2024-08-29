class AddVideoCardTitleToVideoCard < ActiveRecord::Migration[7.1]
  def change
    add_column :video_cards, :video_card_title, :string
  end
end
