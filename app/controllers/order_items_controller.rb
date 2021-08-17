class OrderItemsController < ApplicationController

    def index
        @items = current_cart.order.items
    end
    
    # create method because form tag in products view posts to 'create'
    def create
        current_cart.add_item(
            product_id: params[:product_id],
            quantity: params[:quantity]
        )
        redirect_to cart_path
    end
end
