class CartItemsController < ApplicationController
  def new
    @cart_item = CartItem.new(product_id: params[:product_id],
    cart_id: :current_cart)
    
  end
  
  def create
    # qty = params[:cart_item][:qty]
    # qty = 1
    cart_item = CartItem.new(product_id: params[:product_id],
    cart_id: :current_cart, qty: 1)
    p cart_item
    if cart_item.save
      flash[:notice] = 'アイテムがカートに追加されました'
      redirect_to root_path
    else
      flash[:notice] = 'アイテムの追加に失敗しました'
    end
  end
  
  def destroy
  end
  
end
