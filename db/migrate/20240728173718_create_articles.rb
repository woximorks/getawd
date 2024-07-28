class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.string :article_title
      t.text :article_body
      t.string :article_description
      t.string :article_image_url

      t.timestamps
    end
  end
end
