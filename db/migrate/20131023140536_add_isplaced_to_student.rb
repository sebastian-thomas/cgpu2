class AddIsplacedToStudent < ActiveRecord::Migration
  def change
  	add_column :students, :is_placed, :boolean, :default => false
  end
end
