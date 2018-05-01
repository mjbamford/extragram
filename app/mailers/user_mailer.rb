class UserMailer < ApplicationMailer
  def welcome
    @email = params[:email]
    subject = params[:subject]
    mail to: @email, subject: subject
  end
end
