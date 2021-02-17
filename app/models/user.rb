class User < ApplicationRecord
    # has_many :museums # creating museum visit 
    has_many :reviews
    has_many :reviewed_museums, through: :reviews, source: :museum

    # has_many :museums, through: :visits

    
    has_secure_password
    validates :email, :user_name, presence: true
    validates :email, :user_name, uniqueness: true

end
