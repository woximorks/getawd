class CreateGoals < ActiveRecord::Migration[7.1]
  def change
    create_table :goals do |t|
      t.string :title
      t.text :description
      t.date :due_date
      t.integer :priority
      t.string :category
      t.string :status
      t.datetime :completed_at

      t.timestamps
    end
  end
end
