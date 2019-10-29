class Recipient < ApplicationRecord
    validates :user_id, presence: true
    validates :private_message_id, presence: true
    belongs_to :private_message   #Recipient fait la liaison N-N entre privatemessage et user pour les receveurs
	belongs_to :user
end
