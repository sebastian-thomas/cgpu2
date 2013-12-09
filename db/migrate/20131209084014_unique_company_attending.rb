class UniqueCompanyAttending < ActiveRecord::Migration
  def change
  	add_index :company_attendings , [:companyvisit_id ,:student_id], :unique =>true
  end
end
