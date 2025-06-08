class AddStatusToGoals < ActiveRecord::Migration[7.1]
  def change
    add_column :goals, :status, :integer, default: 0, null: false
  end
end
