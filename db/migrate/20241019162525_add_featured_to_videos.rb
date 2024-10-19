class AddFeaturedToVideos < ActiveRecord::Migration[7.1]
  def change
    add_column :videos, :featured, :boolean
  end
end
