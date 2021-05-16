class UserMailer < ApplicationMailer
  default from: 'MyApp@gmail.com'

  def send_email_to_user(xyz)
    @email = xyz[:email]
    @subject = xyz[:subject]
    @content = xyz[:content]
    mail(to: @email, subject: @subject)
  end
end
