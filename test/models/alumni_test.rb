# == Schema Information
#
# Table name: alumnis
#
#  id               :integer          not null, primary key
#  full_name        :string
#  nickname         :string
#  birth_place      :string
#  address_origin   :text
#  address_domicile :text
#  sex              :integer
#  occupation       :string
#  cellphone        :string
#  bbm              :string
#  facebook         :string
#  website          :string
#  line_id          :string
#  twitter          :string
#  youtube          :string
#  account_id       :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class AlumniTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
