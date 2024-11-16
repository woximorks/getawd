class CreateDocuments < ActiveRecord::Migration[7.1]
  def change
    create_table :documents do |t|
      t.string :title
      t.json :subheadings
      t.json :body
      t.json :images
      t.json :youtube_id
      t.json :metadata

      t.timestamps
    end
  end
end
