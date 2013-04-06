# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  username   :string(255)
#  password   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :password, :username, :remember_token
  has_secure_password
  validates :username, presence: true, uniqueness: {case_sensitive:true}, length:{maximum: 50}
  validates :password, presence: true
  before_save :create_remember_token
  has_many :subscriptions
  private
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
