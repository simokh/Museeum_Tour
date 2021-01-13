class MuseumsController < ApplicationController

    def index 
        @museum = Museum.all
    end

    def new 
        @museum = Museum.new
    end

    def create 
        @museum = Museum.new(params)
        @museum.save 

        redirect_to museums_path
         
    end

    # private

    # def params 
    #     params.require(:museum).permit(:name, :country, :city)
    # end


end
