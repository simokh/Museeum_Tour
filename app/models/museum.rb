class Museum < ApplicationRecord

    has_many :reviews 
    has_many :review_users, through: :reviews , source: :users 

    # validates :name, presence: true
    # validates :borough, presence: true
    # validates :name, uniqueness: true

end
