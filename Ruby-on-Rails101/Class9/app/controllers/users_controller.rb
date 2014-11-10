class UsersController < ApplicationController

def index
	@users = User.all
end

def show
	@user = User.find(params[:id])
end

def edit
end

def new
	@user = User.new
end

def create
	@user = User.new

if @user.save
	redirect_to @user, "yay!"
else 
	render :new 
end
end

def update

end

private

	def user_params

	params.require(:user).permit(:email,:password,:passwrod_confirmation)
	
	end

end