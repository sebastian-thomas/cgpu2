class AddColumnToTable < ActiveRecord::Migration
  def change
    add_column :students, :adv_approved, :boolean ,:default => 0
  end
end
