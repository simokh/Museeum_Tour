class Visit < ApplicationRecord
    belongs_to :museum
    belongs_to :user

    # accepts_nested_attributes_for :museums
    # accepts_nested_attributes_for :reviews 
end
