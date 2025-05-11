class CreateLandscapingJobs < ActiveRecord::Migration[7.1]
  def change
    create_table :landscaping_jobs do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
