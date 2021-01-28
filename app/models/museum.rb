class Museum < ApplicationRecord

    # belongs_to :user
    has_many :reviews
    has_many :visits
    has_many :users
    has_many :users, through: :visits 

    # validates :name, presence: true
    # validates :borough, presence: true
    # validates :name, uniqueness: true

    

end
