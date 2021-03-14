class ShopController < ApplicationController
before_action :shop_detail, only: [:delete, :show, :edit, :update]

  def index
    @pagy, @shops = pagy(Shop.all)
  end

  def new
    @shop =Shop.new
  end

  def show
  end

  def edit
  end

  def create
    @shop = Shop.new(shop_parameter)
    @shop.save

    redirect_to shop_home_path
  end

  def delete
    @shop.destroy

    redirect_to shop_home_path
  end

  def update
    @shop.update(shop_parameter)

    redirect_to shop_show_path(@shop.id)
  end

  private
  def shop_detail
    @shop = Shop.find_by(id: params[:id])
  end

  def shop_parameter
    params.require(:shop).permit(:name, :address, :description, :image)
  end
end
