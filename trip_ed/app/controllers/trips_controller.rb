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
    # Trip.update(toggle[:reserved])
  end

  # def reserve
  #   @location = Location.find(params[:location])
  #   @trip = Trip.find(params[:trip])
  #   # debugger
  #   @trip.toggle!(:reserved)
  #   redirect_to location_path(@location)
  # end

  # POST /trips
  # POST /trips.json
  def create
    @trip = Trip.new(trip_params)

    respond_to do |format|
      if @trip.save
        format.html { redirect_to locations_path, notice: 'Trip was successfully created.' }
        format.json { render :show, status: :created, location: @trip }
      else
        format.html { render :new }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trips/1
  # PATCH/PUT /trips/1.json
  def update
    if session[:type] == 'user'
      @location = Location.find(params[:location])
      @trip = Trip.find(params[:trip])
      # debugger
      @trip.toggle!(:reserved)
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

    respond_to do |format|
      format.html { redirect_to locations_url, notice: 'Trip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end
  #
  #   # Never trust parameters from the scary internet, only allow the white list through.
    def trip_params
      params.require(:trip).permit(:user_id, :location_id, :date, :start_time, :reserved)
    end
end
