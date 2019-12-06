class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  
  def index 
    @products = Product.all
  end

  def show
  end

  def new 
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save ? (redirect_to products_path) : (render 'new')
  end

  def edit     
  end

  def update
    @product.update(product_params)
    @product.save ? (redirect_to products_path) : (render 'edit')
  end

  def destroy
    @product.destroy
    redirect_to root_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :color, :price)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
