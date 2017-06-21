class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :father_name
      t.string :father_birthplace
      t.date :father_dob
      t.string :father_last_education
      t.string :father_occupation
      t.text :father_address
      t.string :mother_name
      t.string :mother_birthplace
      t.string :mother_last_education
      t.string :mother_occupation
      t.text :mother_address
      t.integer :number_of_sibling
      t.integer :sibling_index
      t.integer :alumni_id

      t.timestamps null: false
    end
  end
end
