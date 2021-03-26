class ApplesController < ApplicationController
  before_action :set_apple, only: %i[ show edit update destroy ]

  # GET /apples or /apples.json
  def index
    @apples = Apple.all
  end

  # GET /apples/1 or /apples/1.json
  def show
  end

  # GET /apples/new
  def new
    @apple = Apple.new
  end

  # GET /apples/1/edit
  def edit
  end

  # POST /apples or /apples.json
  def create
    @apple = Apple.new(apple_params)

    respond_to do |format|
      if @apple.save
        format.html { redirect_to @apple, notice: "Apple was successfully created." }
        format.json { render :show, status: :created, location: @apple }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @apple.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apples/1 or /apples/1.json
  def update
    respond_to do |format|
      if @apple.update(apple_params)
        format.html { redirect_to @apple, notice: "Apple was successfully updated." }
        format.json { render :show, status: :ok, location: @apple }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @apple.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apples/1 or /apples/1.json
  def destroy
    @apple.destroy
    respond_to do |format|
      format.html { redirect_to apples_url, notice: "Apple was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def new_apple
    @new_apple123 = Apple.new
  end

  def create_apple
    @apple = Apple.new(new_apple_params)
    if @apple.save
      redirect_to @apple
    else
      render :new_apple
    end
  end

  def edit_apple

  end


  def update_apple

  end

  def delete_apple

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apple
      @apple = Apple.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def apple_params
      params.require(:apple).permit(:name, :price, :description)
    end

    def new_apple_params
      params.require(:apple).permit(:name, :price, :description, :height, :weight)
    end
end
