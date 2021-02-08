class ReviewsController < ApplicationController

        def index
          @review = Review.all 
        end
    
        
        def new 
            @review = Review.new
            @review.build_museum
        end
    
        def create 
            binding.pry 
            @review = Review.new(review_params)
            @review.user = User.last
            if @review.save
            redirect_to @review
            else
                @errors = @review.errors.full_messages
                render :new 
            end
        end
    
        def show
            find_review
        end
    
    
        def edit 
            find_review
        end
    
    
        def update 
            find_review
                if @review.update(review_params)
                    redirect_to museum_path
                else    
                    render :edit
                    
                end
        end
    
        def destroy
            find_review
            @review.destroy
            redirect_to @review
        end
    
        private
            
        def find_review
            @review = Review.find(params[:id])
        end 
    
        def review_params
            params.require(:review).permit(:review, :rate, museum_attributes:[:name, :borough])
        end
end 
