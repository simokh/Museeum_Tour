class MuseumsController < ApplicationController

    def index 
        @museum = Museum.all
    end

    def new 
        @museum = Museum.new
    end

    def create 
        # byebug
        @museum = Museum.new(museum_params)
        @museum.save
        redirect_to museums_path
    end

    private
 
        def museum_params
            params.require(:museum).permit(:name, :country, :city)
        end
end


