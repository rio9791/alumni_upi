# == Schema Information
#
# Table name: news
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  visible    :boolean          default(TRUE)
#  cover      :string
#  slug       :string
#

class News < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  mount_uploader :cover, ImageUploader

  VISIBILITY = [['Ya', true], ['Tidak', false]]

  scope :displays, -> { where(visible: true) }

  validates_presence_of :title, :content, :cover
end
