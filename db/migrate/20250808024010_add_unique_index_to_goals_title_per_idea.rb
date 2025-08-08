class AddUniqueIndexToGoalsTitlePerIdea < ActiveRecord::Migration[7.1]
  def change
    add_index :goals, [:idea_id, :title], unique: true
  end
end
