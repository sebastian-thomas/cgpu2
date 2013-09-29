class CreateCompanyAttendings < ActiveRecord::Migration
  def change
    create_table :company_attendings do |t|
      t.references :companyvisit, index: true
      t.references :student, index: true

      t.timestamps
    end
  end
end
