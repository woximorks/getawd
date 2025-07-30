class CreateRewards < ActiveRecord::Migration[7.1]
  def change
    create_table :rewards do |t|
      t.string :name
      t.text :description
      t.references :goal, null: false, foreign_key: true
      t.integer :cooldown_days
      t.integer :allowed_duration_days
      t.date :last_redeemed_at
      t.boolean :available

      t.timestamps
    end
  end
end
