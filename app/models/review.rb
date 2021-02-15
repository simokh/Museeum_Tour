class Review < ApplicationRecord
    belongs_to :user
    belongs_to :museum
    belongs_to :visit

    # validates :product_id, :user_id, :presence => truee

    
    accepts_nested_attributes_for :visit

end
