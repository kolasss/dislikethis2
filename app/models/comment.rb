class Comment < ActiveRecord::Base

  belongs_to :user
	belongs_to :post

	attr_accessible :body

	validates :user_id, :presence => true
	validates :post_id, :presence => true
	validates :body, :presence => true, :length => { :maximum => 50000 }     # spam protection

	default_scope :order => 'comments.created_at asc'
end
