class HomeController < ApplicationController
    
    def home 
    @most_reviews = Museum.most_reviews.order(:name)
    end

    def  index 
        
    end
    
end