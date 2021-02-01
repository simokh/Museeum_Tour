class MuseumsController < ApplicationController

    def index 
        @museum = Museum.all
    end

    def new 
        @museum = Museum.new
        # @museum.build_visit
        @museum.visits.build
    end

    def create 
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
        params.require(:museum).permit(:name, :borough)

    end
end


