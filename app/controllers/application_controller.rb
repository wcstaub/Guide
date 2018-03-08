class ApplicationController < ActionController::Base
  	protect_from_forgery with: :exception
	before_action :authorize, only: [:edit, :update]
	helper_method :current_user
	

	private
		# See if @current_user is nil or not. If it has some value, leave it alone.
		# Else, get the current user from the session using the user id. 
		# It first sees if the id is in the session, and then gets the User.
		def current_user
		  @current_user ||= User.find(session[:user_id]) if session[:user_id]
		end

		def authorize
		  redirect_to login_url, alert: "Not authorized" if current_user.nil?
		end
end
