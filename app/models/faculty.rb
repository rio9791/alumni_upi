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

class Faculty < ActiveRecord::Base
  # relationship
  belongs_to :account

  validates_presence_of :name, :major
end
