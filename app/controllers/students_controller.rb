class StudentsController < ApplicationController
  before_action :set_student, only: %i[ show edit update destroy ]
  # before_action :set_subject_student, only: %i[ create ]

  # GET /students or /students.json
  def index
    @students = Student.all
    @subject = Subject.find_by(id: params[:subject_id])

  end

  # GET /students/1 or /students/1.json
  def show
    @subject = Subject.find_by(id: params[:subject_id])
  end

  # GET /students/new
  def new
    @subject = Subject.find_by(id: params[:subject_id])
    @student = @subject.students.new
  end

  # GET /students/1/edit
  def edit
    @subject = Subject.find_by(id: params[:subject_id])
    @student = @subject.students.find_by(id: params[:id])
  end

  # POST /students or /students.json
  def create

    @subject = Subject.find_by(id: params[:subject_id])
    @student = @subject.students.new(student_params)
    respond_to do |format|
      if @student.save
        format.html { redirect_to   subject_student_path(@subject.id, @student.id), notice: "Student was successfully created." }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1 or /students/1.json
  def update
    @subject = Subject.find_by(id: params[:subject_id])
    respond_to do |format|
      if @subject.students.update(student_params)
        format.html { redirect_to  subject_student_path(@subject,@student), notice: "Student was successfully updated." }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1 or /students/1.json
  def destroy
    @subject = Subject.find_by(id: params[:subject_id])
    @subject.students.destroy
    respond_to do |format|
      format.html { redirect_to  subject_students_path(@subject), notice: "Student was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find_by(id: params[:id])
    end


    # Only allow a list of trusted parameters through.
    def student_params
      params.require(:student).permit(:name, :age, :phone, :address, :bio)
    end
end
