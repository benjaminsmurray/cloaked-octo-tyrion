class Comment < ActiveRecord::Base
  belongs_to :welcome_page
  attr_accessible :msg, :commenter
end
