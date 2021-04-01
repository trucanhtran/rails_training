class FoodsController < ApplicationController
  before_action :set_food, only: %i[ show edit update destroy ]

  # GET /foods or /foods.json
  def index
    @category = Category.find_by(id: params[:category_id])
    @foods = @category.foods.all
  end

  # GET /foods/1 or /foods/1.json
  def show
    @category = Category.find_by(id: params[:category_id])
  end

  # GET /foods/new
  def new
    @category = Category.find_by(id: params[:category_id])
    @food = @category.foods.new
  end

  # GET /foods/1/edit
  def edit
    @category = Category.find_by(id: params[:category_id])
  end

  # POST /foods or /foods.json
  def create
    @category = Category.find_by(id: params[:category_id])
    @food = @category.foods.new(food_params)

    respond_to do |format|
      if @food.save
        format.html { redirect_to @category, notice: "Food was successfully created." }
        format.json { render :show, status: :created, location: @food }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foods/1 or /foods/1.json
  def update
    @category = Category.find_by(id: params[:category_id])


    respond_to do |format|
      if @category.food.update(food_params)
        format.html { redirect_to category_food_path, notice: "Food was successfully updated." }
        format.json { render :show, status: :ok, location: @food }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foods/1 or /foods/1.json
  def destroy
    # @category = Category.find_by(id: params[:category_id])
    @food.destroy
    respond_to do |format|
      format.html { redirect_to  category_foods_path, notice: "Food was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food
      @food = Food.find_by(id: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def food_params
      params.require(:food).permit(:name, :price, :rate)
    end
end
