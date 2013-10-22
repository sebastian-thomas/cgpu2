class AddAvatarToUsers < ActiveRecord::Migration
  def change
    add_column :users, :picture, :string
    add_column :users, :resume, :string
  end
end
