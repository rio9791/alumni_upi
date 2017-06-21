class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :position
      t.text :description
      t.integer :college_id

      t.timestamps null: false
    end
  end
end
