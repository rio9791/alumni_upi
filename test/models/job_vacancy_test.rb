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

require 'test_helper'

class JobVacancyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
