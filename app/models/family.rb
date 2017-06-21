# == Schema Information
#
# Table name: families
#
#  id                    :integer          not null, primary key
#  father_name           :string
#  father_birthplace     :string
#  father_dob            :date
#  father_last_education :string
#  father_occupation     :string
#  father_address        :text
#  mother_name           :string
#  mother_birthplace     :string
#  mother_last_education :string
#  mother_occupation     :string
#  mother_address        :text
#  number_of_sibling     :integer
#  sibling_index         :integer
#  alumni_id             :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class Family < ActiveRecord::Base
  # relationship
  belongs_to :alumni
end
