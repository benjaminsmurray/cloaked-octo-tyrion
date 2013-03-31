class WelcomePage < ActiveRecord::Base
   attr_accessible :title, :body, :tag_attributes
   has_many (:comments), :dependent => :destroy
   has_one (:tag), :dependent => :destroy
   accepts_nested_attributes_for :tag, :allow_destroy => true
end
