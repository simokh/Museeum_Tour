class MuseumsController < ApplicationController



    def display
         
        @user = User.find(params[:id])
        if @user.id = session[:user_id]
        @museums = @user.reviewed_museums    
        else
            redirect_to(home_path)     
        end
    end


    def index 
        @museums = Museum.all.order(:name)
    end

    def new 
        @museum = Museum.new
    end

    def create 
        @museum = Museum.new(museum_params)
        if @museum.save
            redirect_to  museums_path
        else
            render :new
        end
    end

    def show
        @museum = Museum.find(params[:id])
    end


    def edit 
        find_museum
    end


    def update 
        find_museum
            if find_museum.update(museum_params)
                redirect_to museums_path
            else    
                render :edit  
            end
    end

    def destroy
        if find_museum.destroy
        redirect_to museums_path
        end 
    end

    private
        
    def find_museum
        @museum = Museum.find(params[:id])
    end 

    def museum_params
        params.require(:museum).permit(:name, :borough)
    end
end


