class ExampleMailer < ActionMailer::Base
  default from: "anna.derbisz07@gmail.com"

  def sample_email(user)
  	@user = user
  	mail(to: @user.email, subject: 'Registration at ScrumEasier')
  end
end