class Museum < ApplicationRecord

    has_many :users 
    has_many :users, through: :reviews

    validates :name, :city, :country, presence: true
    validates :name, uniqueness: true

end
