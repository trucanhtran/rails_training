class ProductItemController < ApplicationController
  def index
    @product_items = ProductItem.all
  end

  def show
    @product_item = ProductItem.find_by(id: params[:id])
  end

  def edit
  end

  def new
    @xyz = ProductItem.new
  end

  def create
    puts params
    ProductItem.create(product_parameter)
    redirect_to product_item_list_path
  end

  def update
  end

  def destroy
    ProductItem.find_by(id: params[:id]).delete
    redirect_to product_item_list_path
  end

  private
  def product_parameter
    params.require(:product_item).permit(:price, :name)
  end

end

