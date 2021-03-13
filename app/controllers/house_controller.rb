class HouseController < ApplicationController
  before_action :house_detail, only: [:show, :update, :edit, :destroy]
  def index
    @houses = House.all
  end

  def new
    @house = House.new
  end

  def show
  end

  def edit
  end

  def create
    @house = House.new(house_parameter)
    @house.save

    redirect_to house_home_path
  end

  def destroy

    @house.destroy
    redirect_to house_home_path
  end

  def update
    @house.update(house_parameter)

    redirect_to house_show_path(@house.id)
  end

  private
  def house_detail
    @house = House.find_by(id: params[:id])
  end

  def house_parameter
    params.require(:house).permit(:name,:address,:in_use)
  end
end
