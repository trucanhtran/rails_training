class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def send_email_to_user(abc, token)
    @email = abc[:email]
    @token = token
    mail(to: @email, subject: 'Welcome to My Awesome Site')
  end
end
