class ReservationsController < ApplicationController
  def index
    @locations = Location.all
    @trips = Trip.all
  end
end
