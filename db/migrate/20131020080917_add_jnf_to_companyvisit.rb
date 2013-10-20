class AddJnfToCompanyvisit < ActiveRecord::Migration
  def change
    add_column :companyvisits, :jnf, :string
  end
end
