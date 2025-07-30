class CreateRewardRules < ActiveRecord::Migration[7.1]
  def change
    create_table :reward_rules do |t|
      t.references :reward, null: false, foreign_key: true
      t.string :rule_type
      t.jsonb :params

      t.timestamps
    end
  end
end
