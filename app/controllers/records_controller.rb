class RecordsController < ApplicationController
  before_action :set_record, only: %i[ show edit update destroy ]



  # GET /records or /records.json
  def index
    @records = Record.all
  end

  # GET /records/1 or /records/1.json
  def show
    @student = Student.find_by(id: params[:student_id])
  end

  # GET /records/new
  def new
    @student = Student.find_by(id: params[:student_id])
    @record = Record.new
  end

  # GET /records/1/edit
  def edit
    @student = Student.find_by(id: params[:student_id])
  end

  # POST /records or /records.json
  def create
    @student = Student.find_by(id: params[:student_id])
    @record = @student.build_record(record_params)

    respond_to do |format|
      if @record.save
        format.html { redirect_to students_path, notice: "Record was successfully created." }
        format.json { render :show, status: :created, location: @record }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /records/1 or /records/1.json
  def update
    @student = Student.find_by(id: params[:student_id])

    respond_to do |format|
      if @record.update(record_params)
        format.html { redirect_to  student_record_path(@student), notice: "Record was successfully updated." }
        format.json { render :show, status: :ok, location: @record }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /records/1 or /records/1.json
  def destroy
    @student = Student.find_by(id: params[:id])
    @record.destroy
    respond_to do |format|
      format.html { redirect_to  student_path(@student), notice: "Record was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record
      @record = Record.find_by(id: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def record_params
      params.require(:record).permit(:course, :grade)
    end
end
