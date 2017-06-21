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

class Organization < ActiveRecord::Base
  # relationship
  belongs_to :college
end
