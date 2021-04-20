class PhysicansController < ApplicationController
  before_action :set_physican, only: %i[ show edit update destroy ]

  # GET /physicans or /physicans.json
  def index
    @physicans = Physican.all
  end

  # GET /physicans/1 or /physicans/1.json
  def show
  end

  # GET /physicans/new
  def new
    @physican = Physican.new
  end

  # GET /physicans/1/edit
  def edit
    @patients = Patient.all
  end

  # POST /physicans or /physicans.json
  def create
    @physican = Physican.new(physican_params)

    respond_to do |format|
      if @physican.save
        format.html { redirect_to @physican, notice: "Physican was successfully created." }
        format.json { render :show, status: :created, location: @physican }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @physican.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /physicans/1 or /physicans/1.json
  def update
   @patients = Patient.all
   @appoinment = @physican.appoinments&.find_by(id: params[:id])

    respond_to do |format|
      if @physican.update(physican_params) &&  @appoinment.update(patient_id: params[:patient_id])
        format.html { redirect_to @physican, notice: "Physican was successfully updated." }
        format.json { render :show, status: :ok, location: @physican }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @physican.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /physicans/1 or /physicans/1.json
  def destroy
    @physican.destroy
    respond_to do |format|
      format.html { redirect_to physicans_url, notice: "Physican was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_physican
      @physican = Physican.find_by(id: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def physican_params
      params.require(:physican).permit(:name, :age)
    end
end
