# == Schema Information
#
# Table name: trainings
#
#  id         :integer          not null, primary key
#  name       :string
#  college_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Training < ActiveRecord::Base
  # relationship
  belongs_to :college

  validates_presence_of :name
end
