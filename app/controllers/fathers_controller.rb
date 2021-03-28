class FathersController < ApplicationController
  before_action :set_father, only: %i[ show edit update destroy ]

  # GET /fathers or /fathers.json
  def index
    @fathers = Father.all
  end

  # GET /fathers/1 or /fathers/1.json
  def show
  end

  # GET /fathers/new
  def new
    @father = Father.new
  end

  # GET /fathers/1/edit
  def edit
  end

  # POST /fathers or /fathers.json
  def create
    @father = Father.new(father_params)

    respond_to do |format|
      if @father.save
        format.html { redirect_to @father, notice: "Father was successfully created." }
        format.json { render :show, status: :created, location: @father }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @father.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fathers/1 or /fathers/1.json
  def update
    respond_to do |format|
      if @father.update(father_params)
        format.html { redirect_to @father, notice: "Father was successfully updated." }
        format.json { render :show, status: :ok, location: @father }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @father.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fathers/1 or /fathers/1.json
  def destroy
    @father.destroy
    respond_to do |format|
      format.html { redirect_to fathers_url, notice: "Father was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_father
      @father = Father.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def father_params
      params.require(:father).permit(:name, :age)
    end
end
