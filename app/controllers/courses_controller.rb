class CoursesController < ApplicationController
  def new
    @course = Course.new
    render 'new', layout: 'bootstrap'
  end

  def create
    safe_params = params.require(:course).permit(:title, :description, :start_date)
    @course = Course.new safe_params
    if @course.save
     redirect_to students_path
    else
      flash[:notice] = "Course Didn't Save!!"
      render :new
    end
  end
end
