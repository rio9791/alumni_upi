# == Schema Information
#
# Table name: donates
#
#  id             :integer          not null, primary key
#  amount         :decimal(, )
#  file_transfer  :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  recipient_name :string
#  valid          :boolean          default(FALSE)
#

class Donate < ActiveRecord::Base
  mount_uploader :file_transfer, ImageUploader

  validates_presence_of :amount, :file_transfer

  def self.get_json_data
    json = Donate.all.map{|donate| donate.as_json(except: [:id, :recipient_name, :updated_at, :file_transfer])}
    json.each_with_index do |j, index|
      json[index]['created_at'] = json[index]['created_at'].strftime('%Y-%m-%d')
      json[index]['amount'] = json[index]['amount'].to_i
    end
  end
end
