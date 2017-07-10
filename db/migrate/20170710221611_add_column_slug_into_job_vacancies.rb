class AddColumnSlugIntoJobVacancies < ActiveRecord::Migration
  def change
    add_column :job_vacancies, :slug, :string, unique: true
  end
end
