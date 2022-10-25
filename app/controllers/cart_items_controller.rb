class CartItemsController < ApplicationController
  def new
    @cart_item = CartItem.new(product_id: params[:product_id],
    cart_id: :current_cart)
    
  end
  
  def create
    # qty = params[:cart_item][:qty]
    # cart_item = CartItem.new(product_id: params[:product_id],
    # cart_id: :current_cart, qty: qty)
    # if cart_item.save
    #   flash[:notice] = 'アイテムがカートに追加されました'
    #   redirect_to root_path
    # else
    #   flash[:notice] = 'アイテムの追加に失敗しました'
    # end
  end
  
  def destroy
  end
  
end
