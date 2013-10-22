class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.string :conducted_by
      t.date :on
      t.integer :no_of_days
      t.text :description

      t.timestamps
    end
  end
end
