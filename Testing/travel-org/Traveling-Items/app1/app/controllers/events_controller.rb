class EventsController < ApplicationController

		def index
		@events = Event.all
		end

		def new
		@event = Event.new
		end

		def create
		@event = Event.new(event_params)

		if @event.save
			flash[:notice] = "Your event was created successfully"
			redirect_to events_path
		else 
			flash[:alert] = "We're sorry but there's an error, try again later "
		end

	end

	def destroy
		@event = Event.find(params[:id])
          if @event.destroy     
          flash[:notice] = "Event wasremoved "   
          else     
          flash[:alert] = "Event couldn't be deleted, please try again later"   
          end   
        redirect_to events_path
     end

     def show
     	@event = Event.find(params[:id])
     end
     
     def edit
     	@event = Event.find(params[:id])
     end

     def update
     @event = Event.find(params[:id])
          
          if @event.update(event_params)
          flash[:notice] = "Your event has been successfully updated"
          else
          flash[:alert] = "Something went wrong, check your code"
          end
         redirect_to events_path 
     end

     
private

	def event_params
	params.require(:event).permit(:name,:category,:details,:date,:time,:location,:avatar,:destination_id)
	end

end