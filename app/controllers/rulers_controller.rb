class RulersController < ApplicationController
  before_action :set_ruler, only: %i[ show edit update destroy ]

  # GET /rulers or /rulers.json
  def index
    @rulers = Ruler.all
  end

  # GET /rulers/1 or /rulers/1.json
  def show
  end

  # GET /rulers/new
  def new
    @ruler = Ruler.new
  end

  # GET /rulers/1/edit
  def edit
  end

  # POST /rulers or /rulers.json
  def create
    @ruler = Ruler.new(ruler_params)

    respond_to do |format|
      if @ruler.save
        format.html { redirect_to @ruler, notice: "Ruler was successfully created." }
        format.json { render :show, status: :created, location: @ruler }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ruler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rulers/1 or /rulers/1.json
  def update
    respond_to do |format|
      if @ruler.update(ruler_params)
        format.html { redirect_to @ruler, notice: "Ruler was successfully updated." }
        format.json { render :show, status: :ok, location: @ruler }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ruler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rulers/1 or /rulers/1.json
  def destroy
    @ruler.destroy
    respond_to do |format|
      format.html { redirect_to rulers_url, notice: "Ruler was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ruler
      @ruler = Ruler.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ruler_params
      params.require(:ruler).permit(:name, :color, :lenght)
    end
end
