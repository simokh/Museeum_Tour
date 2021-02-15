class Museum < ApplicationRecord
    validates :name, :borough, :presence => true
    has_many :reviews 
    has_many :review_users, through: :reviews , source: :users 
    
    # validates :name, presence: true
    # validates :borough, presence: true
    # validates :name, uniqueness: true

    scope :most_reviews, -> {(
        select("museums.name, museums.id, count(reviews.id) as reviews_count")
        .joins(:reviews)
        .group("museums.id")
        .order("reviews_count DESC")
        .limit(3)
      )}

end
