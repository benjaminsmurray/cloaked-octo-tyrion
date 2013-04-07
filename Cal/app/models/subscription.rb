class Subscription < ActiveRecord::Base
  attr_accessible :username
  belongs_to :user
  validates_uniqueness_of :username, :scope => :user_id
end
