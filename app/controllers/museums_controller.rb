class MuseumsController < ApplicationController

    before_action :redirect_if_not_logged_in


    def index 
        @museum = Museum.all
    end

    def new 
        @museum = Museum.new
        # @museum.build_visits
        # @museum.build_reviews
        @museum.visit_build 
        @museum.review_build
        
        
    end

    def create 
        binding.pry
        # @museum = Museum.new(museum_params)
        @museum = Museum.new(museum_params)

        if @museum.save
        redirect_to museums_path
        else
            @errors = @museum.errors.full_messages
            render :new 
        end
    end

    def show
        find_museum
    end


    def edit 
        find_museum
    end


    def update 
        find_museum
            if @museum.update(museum_params)
                redirect_to museums_path
            else    
                render :edit
                
            end
    end

    def destroy
        find_museum
        @museum.destroy
        redirect_to museums_path
      end

    private
        
    def find_museum
        @museum = Museum.find(params[:id])
    end 

    def museum_params
        params.require(:museum).permit(
            :name, :borough, 
            visit_date: [:visit_date]
        )

    end
end


