class UsersController < ApplicationController
	
		def index
		@users = User.all
		end

		def show
		@user = User.find(params[:id])
		end

		def new
		@users = User.new
		end

		def create
		@user = User.new(params_users)   
		 
		if @user.save     
		flash[:notice] = "Your account was created  
    	successfully."     
    	redirect_to user_path @user   
		else     
		flash[:alert] = "There was a problem saving your
    	account."    
    	redirect_to show_user_path   
		end
	
		end

		def destroy
		@user = User.find(params[:id])   
		if @user.destroy     
			flash[:notice] = "User account has been removed "   
		else     
			flash[:alert] = "We can't remove this account for the moment"   
		end   
		redirect_to users_path
		end


		def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			flash[:notice] = "User data has been updated"
		else
			flash[:alert] = "We're sorry something went wrong"
		end
		redirect_to root_path
		end

		def edit
			@users = User.find(params[:id])
		end

	private

		def params_users
			params.require(:user).permit(:username)
		end
end