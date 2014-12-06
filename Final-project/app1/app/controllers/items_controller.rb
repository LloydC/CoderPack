class ItemsController < ApplicationController
  
        def index
          @items = Item.all
         end

        def new
          @item = Item.new
        end

        def create
          @item = Item.new(item_params)
    
        if @item.save
          flash[:notice] = "Your object has been added!"
          redirect_to items_path
        else
          flash[:alert] = "There was a problem creating your account. Please try again."
          redirect_to items_new_path
        end

          end

        def show
          @item = Item.find(params[:id])
        end

        def destroy
         @item = Item.find(params[:id])
          if @item.destroy     
          flash[:notice] = "Item has been removed "   
          else     
          flash[:alert] = "This item couldn't be deleted, please try again later"   
          end   
        redirect_to items_path
        end

        def edit
        end


        def update
        end

  private
  
        def item_params
          params.require(:item).permit(:name,:details, :category, :price, :url, :avatar)
        end
end
