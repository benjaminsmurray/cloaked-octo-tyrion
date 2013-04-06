class Subscription < ActiveRecord::Base
  attr_accessible :owner_name, :username
  belongs_to :user
  validates_uniqueness_of :username, scope: [:owner_name]
end
