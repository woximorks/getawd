class CreateSiteVars < ActiveRecord::Migration[7.1]
  def change
    create_table :site_vars do |t|
      t.string :site_var_heading1
      t.string :site_var_heading2
      t.string :site_var_heading3
      t.string :site_var_heading4
      t.string :site_var_heading5
      t.string :site_var_disclaimer1

      t.timestamps
    end
  end
end
