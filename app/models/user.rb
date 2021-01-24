class User < ApplicationRecord
    has_many :museums # creating museum visit 
    has_many :visits 
    has_many :museums, through: :reviews # museuems they have reviewed 
    has_secure_password
    # validates :email, presence: true, 
    # validates :user_name, presence: true
    validates :email, :user_name, presence: true
    validates :email, :user_name, uniqueness: true

    
end
