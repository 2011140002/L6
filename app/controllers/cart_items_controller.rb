class CartItemsController < ApplicationController
  def new
    @cart_item = CartItem.new
    # @cart_item = CartItem.new(product_id: params[:product_id],
    # cart_id: :current_cart)
    @product_id = params[:product_id]
    @cart_id = :current_cart
    
  end
  
  def create
    quantity = params[:cart_item][:quantity]
    cart_item.quantity = quantity
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
