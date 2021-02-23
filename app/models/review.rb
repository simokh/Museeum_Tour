class Review < ApplicationRecord
    belongs_to :user
    belongs_to :museum

    


    validates :museum_id, :user_id, :presence => true
    validates_length_of :review, minimum: 1, maximum: 250
    

end
