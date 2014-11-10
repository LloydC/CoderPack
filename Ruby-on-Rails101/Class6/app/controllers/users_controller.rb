class UsersController < ApplicationController
      
      def index
          @users = User.all
      end

      def new
          @users = User.new
      end

      def create
          @user = User.new(params_users)
      
          if @user.save
          flash[:notice] = "Your account was created  
          successfully."   
          session[:user_id] = @user.id  
          redirect_to users_path  
          else     
          flash[:alert] = "There was a problem saving your
          account."    
          redirect_to users_path  
          end
  
      end

      def show
      @user = User.find(params[:id])
      end

       def edit
        @users = User.find(params[:id])
      end

      def update
        @user = User.find(params[:id])
      if @user.update(params_users)
      flash[:notice] = "User data has been updated"
      else
      flash[:alert] = "We're sorry something went wrong"
      end
      redirect_to users_path
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

      private

      def params_users
      params.require(:user).permit(:username, :email,:password)
      end
end
