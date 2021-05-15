class UserMailer < ApplicationMailer
  default from: 'myapp@example.com'

  def send_email_to_user(params)
    @email = params[:email]
    @content = params[:content]
    @subject = params[:subject]
    mail(to: @email, subject: @subject)
  end
end
