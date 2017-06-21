class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :field
      t.text :address
      t.integer :account_id

      t.timestamps null: false
    end
  end
end
