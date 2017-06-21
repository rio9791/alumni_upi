# == Schema Information
#
# Table name: university_educations
#
#  id              :integer          not null, primary key
#  university_name :string
#  faculty         :string
#  major           :string
#  year            :integer
#  graduate        :date
#  alumni_id       :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class UniversityEducation < ActiveRecord::Base
  # relationship
  belongs_to :alumni
end
