class UsersController < ApplicationController
	def new
		# create user instance and display signup form
	  # @user = User.new
	end

	def create
	# save user to DB and redisplay form if there are validation errors
	#   @user = User.new(params[:user])
	#   if @user.save
	#     session[:user_id] = @user.id
	#     redirect_to root_url, notice: "Signed Up!"
	#   else
	#     render "new"
	#   end
	# end

	# private
	# def user_params
 #      params.require(:user).permit(:email, :password, :password_confirmation, :name)
    end

end
