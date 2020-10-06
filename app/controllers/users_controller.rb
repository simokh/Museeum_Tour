class UsersController < ApplicationController

    def index  
    end

    def new 
        @user = User.new
    end

    def create 
        # binding.pry
        @user = User.new(user_params)
            if @user.save 
                session[:user_id] = @user.id 
                redirect_to museums_path
                # binding.pry
            else 
                render :new 
            end
    end

    def show 

    end

    def update 
    end

    private 

    def user_params 
        params.require(:user).permit(:email, :user_name, :password)
    end

    def current_user
        @current_user = User.last
    end


end
