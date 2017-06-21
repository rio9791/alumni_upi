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

require 'test_helper'

class JobVacancyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
