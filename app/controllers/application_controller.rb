class ApplicationController < ActionController::Base
    def L6
      session[:c] ||= 0
      session[:c] = session[:c].to_i + 1
      render plain: session[:c]
    end
    
    private
    def current_cart
        if session[:cart_id]
            car = Cart.find(session[:cart_id])
        else
            cart = Cart.create
            session[:cart_id] = cart.id
        end
        cart
    end
    helper_method :current_cart
end
