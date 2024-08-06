class AddArticleBody2ToArticles < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :ArticleBody2, :string
  end
end
