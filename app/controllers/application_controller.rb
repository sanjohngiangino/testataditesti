class ApplicationController < ActionController::Base
	before_action :check_user_logged_in
	
	def check_user_logged_in
	    if session[:user]==nil then
	    	redirect_to login_path
	    end
	end
end
