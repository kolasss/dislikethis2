class Post < ActiveRecord::Base
  attr_accessible :title, :url

  belongs_to :user
  has_many :comments, :dependent => :destroy 
  has_many :dislikes, :dependent => :destroy
 
  validates :user_id, :presence => true
  validates :title, :presence => true, :length => { :maximum => 80 }
  validates :url, :presence => true
  validates :rating, :presence => true, :numericality => true

  def count_dislikes
	  self.dislikes.all.count
	end
	
end
