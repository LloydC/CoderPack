class PostsController < ApplicationController

		def index
		@posts = Post.all
		end

		def show
		@posts = User.find(params[:user_id]).posts
		end

		def new
		@posts = Post.new
		end

		def create
		@post = Post.new(params[:user])  
		end

		def destroy
		@post = Post.find(params[:id])   
		if @post.destroy     
			flash[:notice] = "Post has been deleted"   
		else     
			flash[:alert] = "An error occured. Post wasn't destroyed"   
		end   
		redirect_to root_path
		end


end