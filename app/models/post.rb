class Post < ActiveRecord::Base

  attr_accessible :avatar, :name, :title, :content
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }

end
