class UserMailer < ApplicationMailer
  default from: 'ninetyninecats@example.com'

  def welcome_email(user)
    @user = user
    @url = 'http://example.com/session/new'
    mail(to: user.username, subject: 'Select your cute cat')
  end
end
