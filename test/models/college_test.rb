# == Schema Information
#
# Table name: colleges
#
#  id                    :integer          not null, primary key
#  join_year             :integer
#  basic_training        :string
#  intermediate_training :string
#  advanced_training     :string
#  senior_course         :string
#  commissariat          :string
#  korkom                :string
#  branch                :string
#  badko                 :string
#  pb                    :string
#  alumni_id             :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

require 'test_helper'

class CollegeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
