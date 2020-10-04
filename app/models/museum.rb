class Museum < ApplicationRecord
    belongs_to :users
    has_many :mreviews
    has_many :users, through: :mreviews
end
