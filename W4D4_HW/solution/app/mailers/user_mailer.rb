class UserMailer < ApplicationMailer
  default from: 'ninetyninecats@example.com'

  def welcome_email(user)
    @user = user
    @url = 'http://example.com/session/new'
    attachments['cruise.jpg'] = File.read('/assets/images/cruise.jpg')
    mail(to: user.username, subject: 'Select your cute cat')
  end
end
