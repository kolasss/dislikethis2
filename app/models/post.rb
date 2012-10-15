class Post < ActiveRecord::Base
  attr_accessible :title, :url

  belongs_to :user
  has_many :comments, :dependent => :destroy 
  has_many :dislikes, :dependent => :destroy
 
  validates :user_id, :presence => true
  validates :title, :presence => true, :length => { :maximum => 80 }
  validates :url, :presence => true
  
  validates :rating, :presence => true, :numericality => true

  has_attached_file :url, :styles => { :medium => "300x600>", :thumb => "100x200>" }

  validates_attachment :url, :presence => true,
    :content_type => { :content_type => "image/jpeg" },
    :size => { :in => 0..100.kilobytes }

  def count_dislikes
	  self.dislikes.all.count
	end

end
