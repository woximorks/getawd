class AddVideoCardDescriptionToVideoCard < ActiveRecord::Migration[7.1]
  def change
    add_column :video_cards, :video_card_description, :string
  end
end
