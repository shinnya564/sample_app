class UsersController < ApplicationController

	before_action :authenticate_user!

	def show
		@user = User.find(params[:id])
  		@books = @user.books
  		@book = Book.new
	end


	def index
		@users = User.all
		@user = User.find(current_user.id)
		@book = Book.new
	end

	def edit
		@user = User.find(params[:id])
		if current_user.id == @user.id
  		else
  			redirect_to user_path(current_user)
  		end
	end

	def update
  		@user = User.find(params[:id])
    	if @user.update(user_params)
    		redirect_to user_path(current_user.id), notice: 'You have updated user successfully.'
    	else
    		render :edit, notice: 'errors prohibited this book from being saved:'
    	end
  	end

	private

	def user_params
    	params.require(:user).permit(:profile_image, :name, :introduction)
	end

end
