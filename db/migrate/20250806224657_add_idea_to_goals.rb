class AddIdeaToGoals < ActiveRecord::Migration[7.1]
  def change
    add_reference :goals, :idea, null: false, foreign_key: true
  end
end
