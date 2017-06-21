# == Schema Information
#
# Table name: donates
#
#  id            :integer          not null, primary key
#  amount        :decimal(, )
#  file_transfer :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Donate < ActiveRecord::Base
  mount_uploader :file_transfer, ImageUploader
end
