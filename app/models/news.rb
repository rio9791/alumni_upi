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
#

class News < ActiveRecord::Base
  VISIBILITY = [['Ya', true], ['Tidak', false]]
end
