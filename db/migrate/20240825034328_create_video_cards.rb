class CreateVideoCards < ActiveRecord::Migration[7.1]
  def change
    create_table :video_cards do |t|
      t.string :youtube_id

      t.timestamps
    end
  end
end
