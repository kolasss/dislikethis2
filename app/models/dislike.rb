class Dislike < ActiveRecord::Base

  belongs_to :user
  belongs_to :post

  attr_accessible :rate

  validates :user_id, :presence => true
  validates :post_id, :presence => true
  validates :rate, :presence => true, :numericality => true
end
