class CreateStudentTrainings < ActiveRecord::Migration
  def change
    create_table :student_trainings do |t|
      t.references :student, index: true
      t.references :training, index: true

      t.timestamps
    end
  end
end
