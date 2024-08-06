class AddArticleBody3ToArticles < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :ArticleBody3, :string
  end
end
