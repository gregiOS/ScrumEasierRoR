class RegisterUser < ActionMailer::Base
  default from: "admin@scrum-easier.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.register_user.received.subject
  #



  def received(registration)
    @registration = registration

    mail to: @registration.email, subject: "Rejestracja w systemie Scrum Easier zakonczona pomyslnie"
  end
end
