class User < ApplicationRecord
    has_many :museums
    has_many :mreviews
    has_many :museums, through: :mreviews
end
