class Review < ApplicationRecord
    belongs_to :user
    belongs_to :museum

    # validates :product_id, :user_id, :presence => truee

    
    accepts_nested_attributes_for :museum

end
