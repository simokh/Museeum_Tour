class SessionsController < ApplicationController

    def home 
    end

    def omniauth
       user = User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |user|
        binding.pry
        user.user_name = auth['info']['name']
        user.email = auth['info']['email']
        user.password = SecureRandom.hex(10)
       end

       if user.save
        session[:user_id] = user.id
        redirect_to museums_path
       else 
        redirect_to ''
       end

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
        session.clear
        flash[:notice] = "You've signed out."
        redirect_to "/" 
    end

    private 

    def auth 
        request.env['omniauth.auth']
    end

    def current_user
        @user = User.find_by_id(session[:user_id])
    end 

    def user_params 
        params.require(:user).permit(:user_name, :password)
    end
end