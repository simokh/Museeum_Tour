class Review < ApplicationRecord
    belongs_to :user
    belongs_to :museum
    has_many :museums
    has_many :users 
end
