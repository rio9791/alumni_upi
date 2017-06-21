# == Schema Information
#
# Table name: faculties
#
#  id         :integer          not null, primary key
#  name       :string
#  major      :string
#  account_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class FacultyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
