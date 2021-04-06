class SonsController < ApplicationController
  before_action :set_son, only: %i[ show edit update destroy ]
  before_action :set_father_sons, only: %i[ show create edit update destroy]


  # GET /sons or /sons.json
  def index
    @sons = Son.all
  end

  # GET /sons/1 or /sons/1.json
  def show
  end

  # GET /sons/new
  def new
    @father = Father.find_by(id: params[:father_id])
    @son = @father.sons.new
  end

  # GET /sons/1/edit
  def edit
    @son = @father.sons.find_by(id: params[:father_id])
  end

  # POST /sons or /sons.json
  def create

    @son = @father.sons.new(son_params)

    respond_to do |format|
      if @son.save
        format.html { redirect_to @father, notice: "Son was successfully created." }
        format.json { render :show, status: :created, location: @son }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @son.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sons/1 or /sons/1.json
  def update
    respond_to do |format|
      if @father.sons.update(son_params)
        format.html { redirect_to  father_son_path(@father.id, @son.id), notice: "Son was successfully updated." }
        format.json { render :show, status: :ok, location: @son }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @son.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sons/1 or /sons/1.json
  def destroy
    @son.destroy
    respond_to do |format|
      format.html { redirect_to father_path(@father.id), notice: "Son was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_son
      @son = Son.find_by(id: params[:id])
    end

    def set_father_sons
      @father = Father.find_by(id: params[:father_id])
    end

    # Only allow a list of trusted parameters through.
    def son_params
      params.require(:son).permit(:name, :age, :phone, :address)
    end
end
