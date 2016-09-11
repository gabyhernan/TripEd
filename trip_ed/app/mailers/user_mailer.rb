class UserMailer < ApplicationMailer
  default from: 'pukeahontasco@gmail.com'

  def welcome_user(user)
    @user = user
    @url = "http://localhost:3000/users/signin"
    mail(to: @user.email, subject: 'Welcome to TripEd!')
  end
end
