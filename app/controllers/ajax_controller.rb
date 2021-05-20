class AjaxController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save
    respond_to do |format|
      format.js
    end
    # redirect_to list_product_path, notice: "Create product sucessfully"
  end

  def list_product
    @products = Product.all
  end

  private
  def product_params
    params.require(:product).permit(:name, :phone, :des)
  end
end
