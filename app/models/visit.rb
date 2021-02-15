class Visit < ApplicationRecord
    belongs_to :museum, class_name: "museum", foreign_key: "museum_id"
end
