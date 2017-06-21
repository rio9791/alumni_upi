class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.integer :join_year
      t.string :basic_training
      t.string :intermediate_training
      t.string :advanced_training
      t.string :senior_course
      t.string :commissariat
      t.string :korkom
      t.string :branch
      t.string :badko
      t.string :pb
      t.integer :alumni_id

      t.timestamps null: false
    end
  end
end
