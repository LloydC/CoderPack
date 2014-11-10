class RepliesController < ApplicationController
      
      def index
        @replies = Reply.all
        @user = User.where(params[:user_id]).first
        @username = User.find(params[:user_id]).username

      end

      def show
         @reply = Reply.find(params[:id])
         @user = User.where(params[:user_id]).first
      end

      def new
        @user = User.where(params[:user_id]).first
        @reply = Reply.new
      end

      def create
        @reply = Reply.new
        if @reply.save
        flash[:notice] = "Your reply went through"     
        redirect_to reply_path @reply   
        else     
        flash[:alert] = "Problem with your reply"    
        redirect_to show_replies_path   
        end

      end

      def update
        @reply = Reply.find(params[:id])
      if @reply.update(params[:user])
      flash[:notice] = "Your reply has been changed"
      else
      flash[:alert] = "We're sorry something went wrong"
      end
      redirect_to root_path
      end

      def edit
      end

      def destroy
      end
end
