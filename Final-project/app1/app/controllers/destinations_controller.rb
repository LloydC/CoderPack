class DestinationsController < ApplicationController

	def index
		@destinations = Destination.all
	end

	def new
		@destination = Destination.new
	end

	def create
		@destination = Destination.new(dest_params)

		if @destination.save
			flash[:notice] = "New destination was successfully added"
			redirect_to destinations_path
		else 
			flash[:alert] = "We're sorry but there's an error, try again later "
		end

	end

	def destroy
		@destination = Destination.find(params[:id])
          if @destination.destroy     
          flash[:notice] = "Destination has been removed "   
          else     
          flash[:alert] = "It couldn't be deleted, please try again later"   
          end   
        redirect_to destinations_path
     end

     def show
     	@destination = Destination.find(params[:id])
     end
     
     def edit
     	@destination = Destination.find(params[:id])
     end

     def update
     @destination = Destination.find(params[:id])
          
          if @destination.update(dest_params)
          flash[:notice] = "Your destination has been successfully updated"
          else
          flash[:alert] = "Something went wrong, check your code"
          end
         redirect_to destinations_path 
     end

     
private

	def dest_params
	params.require(:destination).permit(:name,:country,:languages,:visas_info,:health_info,:safety_info,:avatar,:events_id)
	end

end