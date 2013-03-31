class Tag < ActiveRecord::Base
  belongs_to :welcome_page
  attr_accessible :name
end
