class WelcomeController < ApplicationController

  def hello
    @teacher_names = Student.teachers.full_name
    @from_user = params[:test]
    flash[:happy] = "You are on my app!"
    # respond_to do |format|
    #   format.html {render 'shared/fancy_hello'}
    # end
  end

end
