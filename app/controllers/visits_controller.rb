class VisitController < ApplicationController


    def new
        @museum = Museum.find(params[:museum_id])
        @visit = @museum.visits.new
    end
    
    def create 
        find_museum = Museum.find(params[:museum_id])
        @visit = find_museum.visits.new(visit_params)
            if @visit.save
                redirect_to museum_path(@visit.museum)
            else
                @errors = @visit.errors.full_messages
                render :new 
            end

    def show
        @visit = Visit.find(params[:id])
        @museum = @visit.museum
    end    

    private

    def visit_params 
        params.require(:visit).permit(:visit_date)
    end

end 