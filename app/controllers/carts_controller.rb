class CartsController < ApplicationController
  def show
    @cart_items = CartItem.findby(cart_id: params[:id])
    
  end
end
