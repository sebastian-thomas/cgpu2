class RemoveResumeFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :resume
    remove_column :users, :picture
  end
end
