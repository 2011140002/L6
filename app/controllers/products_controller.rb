class ProductsController < ApplicationController
  def index
    @products = Product.all
    @cart = current_cart
  end
  
  def new
    @product = Product.new
  end
  
  def create
    product = Product.new(name: params[:product][:name],
    price: params[:product][:price])
    if product.save
      redirect_to root_path
    else
      flash[:notice] = "商品登録に失敗しました"
    end
  end
  
  def destroy
    product = Product.find(params[:id])
    product.destroy
    redirect_to 'index'
  end
  
end
