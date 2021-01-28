class Review < ApplicationRecord
    belongs_to :user
    belongs_to :museum
    # has_many :museums
    # has_many :users 
    # has_many :users, through: :museums
end
