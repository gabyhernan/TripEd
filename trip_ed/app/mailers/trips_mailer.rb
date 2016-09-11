class TripsMailer < ApplicationMailer
  default from: 'pukeahontasco@gmail.com'

  def new_trip(location, trip, email)
    @email = email
    @location = location
    @trip = trip
    mail(to: @email, subject: 'Your Upcoming Trip!')
  end

end
