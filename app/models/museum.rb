class Museum < ApplicationRecord
    has_many :reviews
    has_many :review_users, through: :reviews , source: :users 

    
    
    
  

    scope :most_reviews, -> {(
        select("museums.name, museums.id, count(reviews.id) as reviews_count")
        .joins(:reviews)
        .group("museums.id")
        .order("reviews_count DESC")
        .limit(3)
      )}

end
