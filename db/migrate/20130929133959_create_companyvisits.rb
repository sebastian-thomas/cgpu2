class CreateCompanyvisits < ActiveRecord::Migration
  def change
    create_table :companyvisits do |t|
      t.references :company, index: true
      t.date :on
      t.text :description

      t.timestamps
    end
  end
end
