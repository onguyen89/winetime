class Post < ActiveRecord::Base
 
  attr_accessible :content, :name, :title

  validates :name,  :presence => true
  validates :title, :presence => true
  validates :content, :presence => true

  has_many :comments, :dependent => :destroy
  
end
