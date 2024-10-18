class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.text :description
      t.integer :status
      t.integer :priority
      t.date :start_date
      t.date :due_date
      t.date :completion_date
      t.string :assigned_to
      t.integer :estimated_time
      t.integer :actual_time

      t.timestamps
    end
  end
end
