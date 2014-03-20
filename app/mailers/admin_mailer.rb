class AdminMailer < ActionMailer::Base
  default from: "mailer@studentapp.com"

  def notify_admin_about_new_student student
    @student = student
    mail to: 'renee@nird.us', subject: 'NEW Student Signed Up!'
  end

end
