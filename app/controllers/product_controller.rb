class ProductController < ApplicationController
  def new
    @product = Product.new
    respond_to do |format|
      format.js
    end
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      respond_to do |format|
        format.js
      end
    else
      redirect_to root_path
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :price)
  end
end
