# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def welcome
    email = params[:email] || 'michael@michaelbamford.com'
    subject = params[:subject] || 'Hello world'
    UserMailer.with(email: email, subject: subject).welcome
  end
end
