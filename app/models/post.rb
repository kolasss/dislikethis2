class Post < ActiveRecord::Base
  attr_accessible :title, :url

  belongs_to :user
 
  validates :user_id, :presence => true
  validates :title, :presence => true, :length => { :maximum => 80 }
  validates :url, :presence => true
  validates :rating, :presence => true, :numericality => true
end
