class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :game_name
      t.date :start_date
      t.date :completion_date
      t.text :game_notes
      t.string :game_type
      t.string :game_image
      t.string :youtube_id

      t.timestamps
    end
  end
end
