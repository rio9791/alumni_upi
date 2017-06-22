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
#  nim              :string
#  dob              :date
#

class Alumni < ActiveRecord::Base
  # relationship
  belongs_to :account
  has_one :college, dependent: :destroy
  has_one :family, dependent: :destroy
  has_one :previous_education, dependent: :destroy
  has_many :university_educations, dependent: :destroy
  accepts_nested_attributes_for :university_educations
  accepts_nested_attributes_for :college
  accepts_nested_attributes_for :family
  accepts_nested_attributes_for :previous_education

  # enumeration
  SEX = [ :pria, :wanita ]
  enum sex: SEX
end
