class CreateAlumnis < ActiveRecord::Migration
  def change
    create_table :alumnis do |t|
      t.string :full_name
      t.string :nickname
      t.string :birth_place
      t.text :address_origin
      t.text :address_domicile
      t.integer :sex
      t.string :occupation
      t.string :cellphone
      t.string :bbm
      t.string :facebook
      t.string :website
      t.string :line_id
      t.string :twitter
      t.string :youtube
      t.integer :account_id

      t.timestamps null: false
    end
  end
end
