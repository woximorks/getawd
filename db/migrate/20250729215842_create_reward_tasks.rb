class CreateRewardTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :reward_tasks do |t|
      t.references :reward, null: false, foreign_key: true
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
