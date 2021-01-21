class Museum < ApplicationRecord

    # belongs_to :user
    # has_many :mreviews
    # has_many :users, through: :mreviews

    validates :name, :city, :country, presence: true
    validates :name, uniqueness: true

end
