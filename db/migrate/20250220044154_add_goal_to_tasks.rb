class AddGoalToTasks < ActiveRecord::Migration[7.1]
  def change
    add_reference :tasks, :goal, foreign_key: true, null: true
  end
end
