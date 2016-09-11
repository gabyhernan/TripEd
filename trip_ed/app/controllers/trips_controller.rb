class TripsController < ApplicationController
  # before_action :set_trip, only: [:show, :edit, :update, :destroy]

  # GET /trips
  # GET /trips.json
  def index
    @trips = Trip.all
  end

  # GET /trips/1
  # GET /trips/1.json
  def show

  end

  # GET /trips/new
  def new
    @trip = Trip.new
    @session = session[:user_id]
  end

  # GET /trips/1/edit
  def edit
    @trip = Trip.find(params[:id])
  end

  # POST /trips
  # POST /trips.json
  def create
    @trip = Trip.new(trip_params)
    @trip.save
    redirect_to locations_path
  end

  # PATCH/PUT /trips/1
  # PATCH/PUT /trips/1.json
  def update
    if session[:type] == 'user'
      @location = Location.find(params[:location])
      @trip = Trip.find(params[:trip])
      # debugger
      @trip.toggle!(:reserved)
      @trip.update(user_id: params[:user])
      redirect_to location_path(@location)
    elsif session[:type] == 'location'
      @trip = Trip.find(params[:id])
      @trip.update(trip_params)
      redirect_to locations_url
    end
  end


  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    redirect_to locations_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_params
      params.require(:trip).permit(:user_id, :location_id, :date, :start_time, :reserved)
    end
end
