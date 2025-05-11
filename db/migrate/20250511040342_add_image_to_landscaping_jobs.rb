class AddImageToLandscapingJobs < ActiveRecord::Migration[7.1]
  def change
    add_column :landscaping_jobs, :image, :string
  end
end
