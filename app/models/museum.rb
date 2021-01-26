class Museum < ApplicationRecord

    has_many :users 
    has_many :users, through: :reviews
    has_many :visits
    validates :name, presence: true
    validates :borough, presence: true
    validates :name, uniqueness: true

    accepts_nested_attributes_for :visit_date

end
