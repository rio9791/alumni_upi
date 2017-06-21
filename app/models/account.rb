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
#  crypted_password       :string
#  salt                   :string
#

class Account < ActiveRecord::Base
  rolify

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # relationship
  has_one :alumni
  has_one :faculty
  has_one :company
  has_one :donor

  def authenticate(submitted_password)
    has_password?(submitted_password)
  end

  def has_password?(password)
    password.eql?(password_clean)
  end

  def encrypt(password)
    self.class.encrypt(password, salt)
  end

  def self.encrypt(password, salt)
    enc = OpenSSL::Cipher::Cipher.new('DES-EDE3-CBC')
    enc.encrypt(salt)
    data = enc.update(password)
    Base64.encode64(data << enc.final)
  rescue
    nil
  end

  def password_clean
    unless @password
      enc = OpenSSL::Cipher::Cipher.new('DES-EDE3-CBC')
      enc.decrypt(salt)
      # enc.decrypt
      # enc.pkcs5_keyivgen(password, salt.to_s[0..7])
      text = enc.update(Base64.decode64(crypted_password))
      @password = (text << enc.final)
    end
    @password
  rescue
    nil
  end

  protected

  def encrypt_password
    return if password.blank?
    self.salt = Digest::SHA1.hexdigest("--#{Time.now.to_s}--#{email}--") if new_record?
    self.crypted_password = encrypt(password)
  end

end
