class SessionsController < ApplicationController
    skip_before_action :check_user_logged_in
    def create
        name = params[:user][:name]
        password =params[:user][:password]
        @current_user = Songgoer.where(:name=> name)
        if @current_user.length==0 or
           @current_user[0][:password]!=password
        then
            flash[:loginerror]=true
            redirect_to login_path
        else
            #@current_user[0][:id]
            session[:user]=@current_user[0][:name]
            session[:user_id]=@current_user[0][:id]
            redirect_to songs_path
        end
    end
    
    def destroy
    	session.delete(:user)
    	redirect_to login_path    
    end
end
