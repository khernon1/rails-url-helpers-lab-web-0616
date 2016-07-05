class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def to_s
    student.first_name + " " + student.last_name
  end

  def edit
    @student = Student.find(params[:id])
    @student.toggle!(:active)
    redirect_to "/students/#{@student.id}"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end