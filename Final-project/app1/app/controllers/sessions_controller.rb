class SessionsController < ApplicationController

 		     def new   
          end
          #processes data from login form   
          def create      
  	     @user = User.where(email: params[:email]).first      
  	         
             if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            flash[:notice] = "You've logged in successfully"
            redirect_to user_path(@user.id)
            else  
       	    flash[:alert] = "Sorry but you either entered the wrong username or password"
            redirect_to :back
   		      end
            
	       end

          def destroy  
            session[:user_id] = nil 
            flash[:notice] = "You've successfully logged out " 
            redirect_to root_path   
	        end  

end