class ShoppingCart 
    # token used to figure out who's cart we're dealing with
    def initialize(token:)
        @token = token
    end

    #find order or create one by token; 
    def order
        @order ||= Order.find_or_initialize_by(token: @token) do |order|
            order.sub_total = 0
        end
    end

    #add item based on product id
    def add_item(product_id:, quantity: 1)
        product = Product.find(product_id)
        order_item = order.items.find_or_initialize_by(
            product_id: product_id,
            price: product.price,
            quantity: quantity
            )

        order_item.save!
    end
end
