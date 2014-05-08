class ModelMailer < ActionMailer::Base
  default from: "no-reply@polygl.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_user_notification.subject
  #
  def new_user_notification(user)
    @email = user.email
    @name = user.name

    mail to: @email, subject: "Your registration at polyglt.com was successfull"
  end
end

#to send a message use ModelMailer.new_user_notification(email).deliver

