class PrivateMessage < ApplicationRecord
	validates :content, presence: true
	validates :sender_id, presence: true
	belongs_to :sender, class_name: "User"      #PrivateMessage est en relation 1-N avec User en utilisant une classe_name et en relation N-N avec User pour les recipient
	has_many :recipients
	has_many :users, through: :recipients
end
