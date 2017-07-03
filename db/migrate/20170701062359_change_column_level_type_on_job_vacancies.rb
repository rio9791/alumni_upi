class ChangeColumnLevelTypeOnJobVacancies < ActiveRecord::Migration
  def up
    change_column :job_vacancies, :level, :string
  end

  def down
    change_column :job_vacancies, :level, :integer
  end
end
