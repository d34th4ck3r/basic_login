class UsersController < ApplicationController
	def index
		@user=current_user
	end
	def update
		 @user = User.find(params[:id])
		 @user.update_attributes(params[:user])
		 redirect_to @user
	end
	def show
		@user=User.find(params[:id])
	end
end
