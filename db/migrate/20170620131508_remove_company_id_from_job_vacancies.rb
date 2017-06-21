class RemoveCompanyIdFromJobVacancies < ActiveRecord::Migration
  def change
    remove_column :job_vacancies, :company_id
  end
end
