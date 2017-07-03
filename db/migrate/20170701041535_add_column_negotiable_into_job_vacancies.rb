class AddColumnNegotiableIntoJobVacancies < ActiveRecord::Migration
  def change
    add_column :job_vacancies, :negotiable_salary, :boolean, default: true
  end
end
