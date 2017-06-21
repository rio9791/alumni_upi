# == Schema Information
#
# Table name: job_vacancies
#
#  id          :integer          not null, primary key
#  position    :string
#  description :string
#  due_date    :date
#  visible     :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class JobVacancy < ActiveRecord::Base
end
