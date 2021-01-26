class VisitsController < ApplicationController
    
        def index 
            @visit= Visit.all
        end
    
        
        def new 
            @visit = Visit.new
        end
    
        def create 
            @visit = Visit.new(visit_params)
    
            if @visit.save
            redirect_to visit_path
    
            else
                @errors = @visit.errors.full_messages
                render :new 
            end
        end
    
        # def show
        #     find_visit
        # end
    
    
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
            find_visit
            @visit.destroy
            redirect_to visit_path
        end
    
        private
            
        def find_visit
            @visit = visit.find(params[:id])
        end 
    
        def visit_params
            params.require(:visit).permit(:visit_date)
        end
    
end
