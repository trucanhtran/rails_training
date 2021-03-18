class CategoryController < ApplicationController
  before_action :category_detail, only: [:delete, :show, :update, :edit]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def show
  end

  def edit
  end

  def create
    @category = Category.new(category_parameter)
    @category.save

    redirect_to category_index_path
  end

  def update
    @category.update(category_parameter)

    redirect_to category_show_path(@category.id)
  end

  def delete
    @category.delete

    redirect_to category_index_path
  end

  private
  def category_detail
    @category = Category.find_by(id: params[:id])
  end
  def category_parameter
    params.require(:category).permit(:name, :price, :image, :description)
  end
end
