class PostsController < ApplicationController
  
  def new
  		@user = User.where(params[:user_id]).first
  		@posts = Post.new
  end

  def create
  	@post = Post.new(params[:user])  
  end

  def show
  	@posts = User.find(params[:user_id]).posts
  end

  def destroy
  	@post = Post.find(params[:id])   
		if @post.destroy     
			flash[:notice] = "Post has been deleted"   
		else     
			flash[:alert] = "An error occured. Post wasn't destroyed"   
		end   
  end

end
