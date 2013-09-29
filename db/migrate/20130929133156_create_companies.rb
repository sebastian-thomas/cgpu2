class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :address
      t.srting :contact_person
      t.text :contact_addr

      t.timestamps
    end
  end
end
