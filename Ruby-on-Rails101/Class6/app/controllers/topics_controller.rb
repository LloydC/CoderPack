class TopicsController < ApplicationController
          
          def index
            @topics = Topic.all
          end

          def show
            @topic = Topic.find(params[:id])
            @user = User.where(params[:user_id]).first
          end

          def new
            @topic = Topic.new
            @user = User.where(params[:user_id]).first
          end

          def create
            @topic = Topic.new
              if @topic.save
              flash[:notice] = "Your topic was saved."     
              redirect_to user_topics_path   
              else     
              flash[:alert] = "An error occured"    
              redirect_to show_user_path   
              end
          end

          

          def update
          @topic = Topic.find(params[:id])
         if @topic.update(topic_params)
          flash[:notice] = "Topic has been renamed"
          else
          flash[:alert] = "We're sorry something went wrong"
          end
          redirect_to topic_path
          end

          def edit
            @topic = Topic.find(params[:id])
            @user = User.where(params[:user_id]).first
          end

          def destroy
              @topic = Topic.find(params[:id])   
              @user = User.where(params[:user_id]).first
        if @topic.destroy     
       flash[:notice] = "Topic has been removed "   
        else     
        flash[:alert] = "Sorry but this topic can't be deleted"   
        end   
        redirect_to user_topics_path
        end

        private

      def topic_params
      params.require(:topic).permit(:title, :description)
      end
        
end
