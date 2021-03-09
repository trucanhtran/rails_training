class StoreController < ApplicationController
  def index
    @item_stores = Store.all
  end

  def new
    @item_store = Store.new
  end

  def show
    @item_store = Store.find_by(id: params[:id])
  end

  def create
    @item_store = Store.new(store_parameter)
    @item_store.save

    redirect_to store_home_list_path
  end

  def update
  end

  def destroy
  end

  private
  def store_parameter
    params.require(:store).permit(:name, :price, :category_id)
  end
end
