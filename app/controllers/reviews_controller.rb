class ReviewsController < ApplicationController

        def index
          @review = Review.all 
        end
    
        
        def new 
            museum_instance
            @review = @museum.reviews.new
        end
    
        def create 
            museum_instance
            @review = museum_instance.reviews.new(review_params)
            if @review.save
            redirect_to review_path(@review.museum)
            else
                @errors = @review.errors.full_messages
                render :new 
            end
        end

    
        def show
            
        end
    
    
        def edit 
            find_review
            @musuem = @review.museum
        end
    
    
        def update 
            find_review
                if @review.update(review_params)
                    redirect_to museum_path(@review.museum)
                else    
                    render :edit
                    
                end
        end
    
        def destroy
            @museum = find_review.review
            @review.destroy
            redirect_to museum_path(@museum)
        end
    
        private

        def museum_instance
            @musuem = Museum.find(params[:museum_id])
        end
            
        def find_review
            @review = Review.find(params[:id])
        end 
    
        def review_params
            params.require(:review).permit(:user_id, :museum_id, :review, :rate, museum_attributes:[:name, :borough])
        end
end 
