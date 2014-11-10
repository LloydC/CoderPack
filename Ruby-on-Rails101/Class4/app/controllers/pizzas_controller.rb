class PizzasController < ApplicationController

		def index
		@pizzas = Pizza.all

		if @pizzas.present?    
		flash[:notice] = "Pizzas are hot and ready to be delivered!"   
		else
    	flash[:alert] = "Sorry, we're sold out."
  		end
		
		end

		def show
		@pizza = Pizza.find(params[:id])
		end

		def destroy
		@pizza = Pizza.find(params[:id])   
		if @pizza.destroy     
			flash[:notice] = "Pizza has been removed from the menu :("   
		else     
			flash[:alert] = "We can't remove a pizza that good."   
		end   
		redirect_to root_path
		end

end


