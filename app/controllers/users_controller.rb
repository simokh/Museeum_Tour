class UsersController < ApplicationController

    # def index  
    # end

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
        # @user = User.find_by_id(session[:user_id])
        user 
        redirect_to '/' if !@user
    end

    def update
        # @user = User.find_by_id(session[:user_id])
        user 
        redirect_to '/' if !@user
    end

    private 

    def user_params
        params.require(:user).permit(:email, :user_name, :password)
        # params.require(:user).require(:email, :password).permit(*args)
    end

    def user 
        @user = User.find_by_id(session[:user_id]
    end


end
