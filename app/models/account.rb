# == Schema Information
#
# Table name: accounts
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class Account < ActiveRecord::Base
  rolify

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # relationship
  has_one :alumni, dependent: :destroy
  has_one :faculty, dependent: :destroy
  has_one :company, dependent: :destroy
  accepts_nested_attributes_for :alumni
  accepts_nested_attributes_for :faculty
  accepts_nested_attributes_for :company

  # scope
  scope :alumni, -> {joins(:roles).where(roles: {name: 'alumni'})}
  scope :company, -> {joins(:roles).where(roles: {name: 'company'})}
  scope :faculty, -> {joins(:roles).where(roles: {name: 'faculty'})}
  scope :admin, -> {joins(:roles).where(roles: {name: 'admin'})}

  def display_name
    if has_role?(:admin)
      'Admin'
    elsif has_role?(:company)
      company.name
    elsif has_role?(:faculty)
      faculty.name
    else
      alumni.full_name
    end
  end

end
