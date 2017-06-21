class CreateJobVacancies < ActiveRecord::Migration
  def change
    create_table :job_vacancies do |t|
      t.integer :company_id
      t.string :position
      t.string :description
      t.date :due_date
      t.boolean :visible

      t.timestamps null: false
    end
  end
end
