class User < ApplicationRecord
    has_many :museums
    has_many :mreviews
    has_many :museums, through: :mreviews
    has_secure_password
end
