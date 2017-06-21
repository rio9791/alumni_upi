# == Schema Information
#
# Table name: previous_educations
#
#  id                 :integer          not null, primary key
#  elementary_school  :string
#  junior_high_School :string
#  senior_high_school :string
#  alumni_id          :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class PreviousEducationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
