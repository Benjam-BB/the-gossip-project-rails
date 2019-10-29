class City < ApplicationRecord
    validates :name, presence: true
    validates :zip_code, presence: true
    has_many :users 	#City en relation 1-N avec User
end
