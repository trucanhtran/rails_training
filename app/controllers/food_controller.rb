class FoodController < ApplicationController
  before_action :food_detail, only: [:show, :update, :edit, :destroy]

  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def show
  end

  def edit

  end

  def create
    @food = Food.new(food_parameter)
    @food.save

    redirect_to food_home_path
  end

  def delete

  end

  def update
    @food.update(food_parameter)

    redirect_to food_show_path(@food.id)
  end

  def destroy
    @food.destroy

    redirect_to food_home_path
  end

  private
  def food_detail
    @food = Food.find_by(id: params[:id])
  end

  def food_parameter
    params.require(:food).permit(:name, :price)
  end
end
