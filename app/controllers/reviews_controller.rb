class ReviewsController < ApplicationController

        
        def new
            @museum = Museum.find(params[:museum_id])
            @review = @museum.reviews.new
        end
    
        def create 
            find_museum
            @review = find_museum.reviews.new(review_params)
            if @review.save
            redirect_to museum_path(@review.museum)
            else
                @errors = @review.errors.full_messages
                render :new 
            end
        end

    
        def show
            find_review
            @museum = find_review.museum
        end
    
    
        def edit 
            find_review
            @museum = @review.museum
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
            @museum = find_review.museum
            if @review.destroy
            redirect_to museum_path(@museum)
            end 
        end
    
        private

        def find_museum
            @musuem = Museum.find(params[:museum_id])
        end
            
        def find_review
            @review = Review.find(params[:id])
        end 
    
        def review_params
            params.require(:review).permit(:user_id, :museum_id, :review, :rate)
        end
end 
