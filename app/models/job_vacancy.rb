# == Schema Information
#
# Table name: job_vacancies
#
#  id                :integer          not null, primary key
#  position          :string
#  description       :string
#  due_date          :date
#  visible           :boolean
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  company_name      :string
#  location          :string
#  level             :string
#  qualification     :string
#  salary_range_min  :decimal(, )
#  salary_range_max  :decimal(, )
#  job_type          :string
#  negotiable_salary :boolean          default(TRUE)
#  about_company     :text
#

class JobVacancy < ActiveRecord::Base
  VISIBILITY = [['Ya', true], ['Tidak', false]]
  NEGOTIABLE = [['Ya', true], ['Tidak', false]]
  LEVEL = ['Fresh Graduate', 'Junior', 'Mid Senior', 'Senior']
  QUALIFICATION = ['Diploma', 'Sarjana', 'Magister', 'Doktor']
  JOBTYPE = ['Full-time', 'Hourly']
end
