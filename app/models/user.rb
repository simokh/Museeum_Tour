class User < ApplicationRecord
    # has_many :museums # creating museum visit 
    has_many :visits
    has_many :reviews
    has_many :museums, through: :visits# museuems they have reviewed
    has_many :reviewed_museums, through: :reviews, source: :museum

    accepts_nested_attributes_for :visits
    accepts_nested_attributes_for :reviews


    
    has_secure_password
    validates :email, :user_name, presence: true
    validates :email, :user_name, uniqueness: true

end
