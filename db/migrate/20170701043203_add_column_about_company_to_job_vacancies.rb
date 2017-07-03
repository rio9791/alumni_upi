class AddColumnAboutCompanyToJobVacancies < ActiveRecord::Migration
  def change
    add_column :job_vacancies, :about_company, :text
  end
end
