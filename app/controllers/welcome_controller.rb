class WelcomeController < ApplicationController

  def hello
    @teacher_names = Student.teachers.full_name
    @from_user = params[:test]
  end

end
