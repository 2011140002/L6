class CartsController < ApplicationController
  def show
    @cart_items = CartItem.findby(cart_id: :current_cart
    .id)
    
  end
end
