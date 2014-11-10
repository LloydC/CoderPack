class DestinationsController < ApplicationController

	def index
	@destinations = Destinations.all
	end

	def new
		@destination = Destinations.new
	end

	def create
		@destination = Destinations.new(destination_params)
		
		if @destination.save
			flash[:notice] = "You've added a new destination successfully"
			redirect_to destinations_path
		else
			flash[:alert] = "Something went wrong, try again"
			redirect_to destinations_new_path
		end
	end

	private

	def destination_params
	params.require(:destinations).permit(:city,:country,:information,:accomodation,:avatar)
	end

end