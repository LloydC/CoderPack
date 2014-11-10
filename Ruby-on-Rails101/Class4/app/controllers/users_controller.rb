class UsersController < ApplicationController

	def index
		@colors = %w(red blue green orange)

		@users = User.all
		if @users.present?    
	flash[:notice] = "Users display successfully."   
		else
    flash[:alert] = "Sorry, there were no users to display."
  		end
	end

	def show
		@user = User.find(params[:id])
	end

	def new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
		end

end