class Review < ApplicationRecord
    belongs_to :user
    belongs_to :museum

    
    accepts_nested_attributes_for :museum


    def name
        "#{self.museum.name}"
    end

    def borough
        "#{self.museum.borough}"
    end
    
end
