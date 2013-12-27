class CreateRegProfiles < ActiveRecord::Migration
  def change
    create_table :reg_profiles do |t|
      t.string :name
      t.references :role

      t.timestamps
    end
  end
end
