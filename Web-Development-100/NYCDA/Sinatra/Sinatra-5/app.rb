require 'sinatra'
require 'sinatra/activerecord'

configure(:development){set :database, "sqlite:development.sqlite3"}
require './models'


get '/' do
	erb :home
end

post '/sign-in' do   
	@user = User.where(username: params[:username]).first   
	if @user.password == params[:password]     
		puts "Login was successful"  
	else  redirect "/login-failed"   
	end
end