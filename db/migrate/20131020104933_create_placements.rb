class CreatePlacements < ActiveRecord::Migration
  def change
    create_table :placements do |t|
      t.references :student, index: true
      t.references :company, index: true

      t.timestamps
    end
  end
end
