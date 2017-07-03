class AddMoreColumnsToJobVacancies < ActiveRecord::Migration
  def change
    add_column :job_vacancies, :company_name, :string
    add_column :job_vacancies, :location, :string
    add_column :job_vacancies, :level, :integer
    add_column :job_vacancies, :qualification, :string
    add_column :job_vacancies, :salary_range_min, :decimal
    add_column :job_vacancies, :salary_range_max, :decimal
    add_column :job_vacancies, :job_type, :string
  end
end
