class AddColumnMotherDobIntoFamilies < ActiveRecord::Migration
  def change
    add_column :families, :mother_dob, :date
  end
end
