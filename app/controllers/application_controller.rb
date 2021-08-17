class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception #prevent cross site request forgery

    before_action :current_cart #need cart to be created as soon as first request
    
    #create new instance of shopping cart with cart token
    # need to make method where if current_cart empty, make new
    def current_cart
        @current_cart ||= ShoppingCart.new(token: cart_token)
    end

    helper_method :current_cart #can access this method in view files

    private 
    #only need this method to create or find current_cart, thus private
    def cart_token 
        return @cart_token unless @cart_token.nil?

        #session lives on server, based on which user accessing it; creates hash
        session[:cart_token] ||= SecureRandom.hex(8)
        @cart_token = session[:cart_token]
    end
end