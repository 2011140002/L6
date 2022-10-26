class CartItemsController < ApplicationController
  def new
    cart = :current_cart
    @cart_item = CartItem.new(product_id: params[:product_id],
    cart_id: cart.id)
    
  end
  
  def create
    # cart_item.product = Product.find(5)
    # cart_item.cart = Cart.find(1)
    # cart_item.qty = 3
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
