require 'sinatra'
require 'sinatra/activerecord'
require 'bundler/setup' 
require 'rack-flash' 



set :database, "sqlite3:development.sqlite3"
set :sessions, true
enable :sessions 
use Rack::Flash, :sweep => true
require './models'


def current_user   
if session[:user_id]    
@current_user = User.find(session[:user_id])   
	end 
end
 
 get '/' do
#@user = User.find(1)
#@user2 = User.last
#@user3 = User.all
 	erb :home

end

get '/sign-up' do 
	erb :signup
	
end

post '/sign-up' do
	@user = User.create(params[:user])
	session[:user_id] = @user.id
    redirect '/'
end

post '/sign-in' do   
	
@user = User.where(username: params[:username]).first   
	
	if @user&& @user.password == params[:password]
    flash[:notice] = "You’ve been signed in successfully."     
    redirect "/"   
else     
	flash[:alert] = "There was a problem signing you in."     
	redirect "/login-failed"   
end
end

get '/signout' do
	session[:user_id] = nil
	flash[:notice] = "You've signed out"
	redirect '/home'
	end


get '/profile' do
if session[:user_id] && 
	@user = User.find(session[:user_id])
erb :profile
end
	end

get '/login-failed' do
	erb :error

end