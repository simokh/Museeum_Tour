class SessionsController < ApplicationController

    def home 
    end

    def new
        @user = current_user
    end

    def create
        post '/login' do 
            @user = current_user.find_by(user_name: params[:user_name])
            
            if @user&.authenticate(params[:password])
                session[:user_id] = user.id
                redirect_to :login
                
            else 
                erb :home   
            end
        end
    end

    def destroy 
        render :home 
    end

    private 

    def current_user
        @user = User.find_by_id(session[:user_id])
    end 
end