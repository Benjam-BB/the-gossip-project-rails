class Gossip < ApplicationRecord

	validates :title, presence: true, 
		length: { minimum: 3 }
	validates :content, presence: true
	validates :user_id, presence: true
    has_many :tag_lists 		#Gossip en relation N-1 avec User et en relation 1-N avec Comment et Like, et en relation N-N avec Tags
	has_many :tags, through: :tag_lists
	belongs_to :user
	has_many :comments
	has_many :likes

	
end
