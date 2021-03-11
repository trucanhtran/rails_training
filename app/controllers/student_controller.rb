class StudentController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @new_student = Student.new
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  def create
    @student = Student.new(student_parameter)
    @student.save
    redirect_to student_home_path
  end

  private
  def student_parameter
    params.require(:student).permit(:name, :age, :student_id, :class_name)
  end

end
