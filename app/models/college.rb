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

class College < ActiveRecord::Base

  # relationship
  belongs_to :alumni
  has_many :trainings
  has_many :organizations
  accepts_nested_attributes_for :trainings
  accepts_nested_attributes_for :organizations

  validates_presence_of :join_year

end
