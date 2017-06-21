class CreateUniversityEducations < ActiveRecord::Migration
  def change
    create_table :university_educations do |t|
      t.string :university_name
      t.string :faculty
      t.string :major
      t.integer :year
      t.date :graduate
      t.integer :alumni_id

      t.timestamps null: false
    end
  end
end
