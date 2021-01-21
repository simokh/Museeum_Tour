class SessionsController < ApplicationController

    def home 
    end

    def new 
        @user = current_user 
    end

    def create
        # binding.pry
            @user = User.find_by(user_name: params[:user][:user_name])
            
            if @user&.authenticate(params[:user][:password])
                session[:user_id] = @user.id
                redirect_to museums_path 
            else 
        
                @errors = "Invalid Username or Password"
                render :new   
            end
    end



    def destroy 
        render :home 
    end

    private 

    def current_user
        @user = User.find_by_id(session[:user_id])
    end 

    def user_params 
        params.require(:user).permit(:user_name, :password)
    end
end