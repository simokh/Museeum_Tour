class Museum < ApplicationRecord

    has_many :users 
    has_many :users, through: :reviews

    validates :name, presence: true
    validates :borough, presence: true
    validates :name, uniqueness: true

end
