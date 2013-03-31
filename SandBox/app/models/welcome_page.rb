class WelcomePage < ActiveRecord::Base
   attr_accessible :title, :body, :tags_attributes
   has_many (:comments), :dependent => :destroy
   has_many :tags
   accepts_nested_attributes_for :tags
end
