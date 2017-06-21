class CreateDonates < ActiveRecord::Migration
  def change
    create_table :donates do |t|
      t.decimal :amount
      t.string :file_transfer

      t.timestamps null: false
    end
  end
end
