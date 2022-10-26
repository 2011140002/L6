class CartsController < ApplicationController
  def show
    @cart_items = CartItem.find_by(cart_id: params[:id])
    
  end
end
