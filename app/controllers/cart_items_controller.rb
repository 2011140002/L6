class CartItemsController < ApplicationController
  def new
    @cart_item = CartItem.new()
    @product_id = params[:product_id]
  end
  
  def create
    cart_item = CartItem.new(qty: params[:cart_item][:qty],
    product_id: params[:cart_item][:product_id],
    cart_id: params[:cart_item][:cart_id])
    if cart_item.save
      flash[:notice] = 'アイテムがカートに追加されました'
      redirect_to root_path
    else
      flash[:notice] = 'アイテムの追加に失敗しました'
    end
  end
  
  def destroy
    cart_item = CartItem.find(params[:id])
    cart_item.destroy
    redirect_to
  end
  
end
