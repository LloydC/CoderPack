class UsersController < ApplicationController

			     def index
              @users = User.all
            end

            def show
              @user = User.find(params[:id]) 
            end

            def new
              @user = User.new
            end

            def create
              @user = User.new
      byebug
              if @user.save(user_params)
              flash[:notice] = "Welcome to the site!"
              session[:user_id] = @user.id
              redirect_to user_path @user
              else
              flash[:alert] = "There was a problem creating your account. Please try again."
              redirect_to new_user_path
              end

            end

            def edit
              @user = User.find(params[:id])
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

            if @user.destroy(user_params)    
            flash[:notice] = "User deleted successfully."   
            else     
            flash[:alert] = "There was a problem deleting the user."   
            end   
           
            end

    private     

      def user_params
       params.require(:user).permit(:username, :email, :password, :avatar, :gender, :age, :job, :interests, :about)
      end

end
