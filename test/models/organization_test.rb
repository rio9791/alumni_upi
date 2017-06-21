# == Schema Information
#
# Table name: organizations
#
#  id          :integer          not null, primary key
#  name        :string
#  position    :string
#  description :text
#  college_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class OrganizationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
