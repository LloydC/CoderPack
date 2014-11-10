class ItemsController < ApplicationController

	def index
		@items = Items.all
	end

	def new
		@item = Items.new
	end

	def create
		@item = Items.new(item_params)
		
			if @item.save
			flash[:notice] = "Your object has been added!"
			
			redirect_to items_new_path
			else
			flash[:alert] = "There was a problem creating your account. Please try again."
			redirect_to items_new_path
			end
	end


	private
	
	def item_params
		params.require(:item).permit(:name,:details, :price,:avatar)
	end
end