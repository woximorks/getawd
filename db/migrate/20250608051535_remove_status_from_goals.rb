class RemoveStatusFromGoals < ActiveRecord::Migration[7.1]
  def change
    remove_column :goals, :status, :string
  end
end
