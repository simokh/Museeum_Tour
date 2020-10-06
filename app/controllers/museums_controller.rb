class MuseumsController < ApplicationController

    def index 
        @museum = Museum.all
    end
end
