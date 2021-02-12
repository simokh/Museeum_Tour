class Review < ApplicationRecord
    belongs_to :user
    belongs_to :museum

    validates :product_id, :user_id, :presence => true

    
    accepts_nested_attributes_for :museum


    def name
        "#{self.museum.name}"
    end

    def borough
        "#{self.museum.borough}"
    end
    
end
