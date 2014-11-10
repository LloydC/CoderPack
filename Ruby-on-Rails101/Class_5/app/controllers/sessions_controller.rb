class SessionsController < ApplicationController

           def new   
            end
  #processes data from login form   
 
           def create      
  	         @user = User.where(username: params[:username]).first      
  	
            if @user 
               session[:user_id] = @user.id
               flash[:notice] = "You've logged in successfully"
               redirect_to user_path @user 
       
            else
       	       flash[:alert] = "Sorry, there was an error during the login"
   		      end

	          end

          def destroy  
            session[:user_id] = nil 
            flash[:notice] = "You've successfully logged out " 
            redirect_to root_path   
          end        

end