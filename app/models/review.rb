class Review < ApplicationRecord
    belongs_to :user
    belongs_to :museum
    # belongs_to :visit

    validates :museum_id, :user_id, :presence => true

    

end
