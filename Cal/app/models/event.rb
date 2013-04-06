class Event < ActiveRecord::Base
  attr_accessible :descr, :name, :owner, :place, :when_date, :when_time
  validates :owner, presence: true
  validates :name, presence: true
end
