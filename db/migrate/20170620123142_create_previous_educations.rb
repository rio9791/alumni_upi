class CreatePreviousEducations < ActiveRecord::Migration
  def change
    create_table :previous_educations do |t|
      t.string :elementary_school
      t.string :junior_high_School
      t.string :senior_high_school
      t.integer :alumni_id

      t.timestamps null: false
    end
  end
end
