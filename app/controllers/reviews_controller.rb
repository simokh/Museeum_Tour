class ReviewsController < ApplicationController

        def index
          @review = Review.all 
        end
    
        
        def new 
            @review = Review.new
        end
    
        def create 
            @review = Review.new(review_params)
    
            if @review.save
            redirect_to @review_path(review)
    
            else
                @errors = @review.errors.full_messages
                render :new 
            end
        end
    
        def show
            find_review
        end
    
    
        # def edit 
        #     find_visit
        # end
    
    
        # def update 
        #     find_visit
        #         if @visit.update(visit_params)
        #             redirect_to museum_path
        #         else    
        #             render :edit
                    
        #         end
        # end
    
        def destroy
            find_review
            @review.destroy
            redirect_to @review_path(review)
        end
    
        private
            
        def find_review
            @review = review.find(params[:id])
        end 
    
        def review_params
            params.require(:review).permit(:review, :rate)
        end


end
