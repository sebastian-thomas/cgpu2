class AddAvatarToStudents < ActiveRecord::Migration
  def change
    add_column :students, :picture, :string
    add_column :students, :resume, :string
  end
end
