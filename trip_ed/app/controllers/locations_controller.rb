class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  # GET /locations
  # checks session type before redirecting to correct path
  # if type: location then forward to location index to manage your account and CRUD trips
  # if type: user then forward to public index to search and rsvp trips
  # if neither then forward to signin page
  def index
    if session[:type] == 'location'
      @location = Location.find_by(id: session[:user_id])
      @trips = Trip.where(location_id: @location.id)
    elsif session[:type] == 'user'
      @session = session[:user_id]
      directions
      @lat = @coordinates["lat"]
      @lng = @coordinates["lng"]
      if params[:search]
        @locations = Location.search(params[:search]).order("created_at DESC")
      else
        @locations = Location.all.order('created_at DESC')
        get_locations_coords(@locations)
        @location_coords
      end
    else
      redirect_to '/users/signin'
    end
  end

  # GET /locations/1

  def show
    @location = Location.find(params[:id])
    @trips = Trip.where(location_id: @location.id)
    @session = session[:user_id]
  end

  def directions
    address = session[:school_address]
    url = ("https://maps.googleapis.com/maps/api/geocode/json?address="+address+",+key=AIzaSyDgn3marDLka0pTrAKp5JRPSidCqdNiqVA")
    response = HTTParty.get(url)
    json = JSON.parse(response.body)
    @coordinates = json["results"][0]["geometry"]["location"]
  end

  def get_locations_coords(locations)
    @location_coords = []
    locations.each do |location|
      address = location.address
      url = ("https://maps.googleapis.com/maps/api/geocode/json?address="+address+",+key=AIzaSyDgn3marDLka0pTrAKp5JRPSidCqdNiqVA")
      response = HTTParty.get(url)
      json = JSON.parse(response.body)
      @location_coords.push(json["results"][0]["geometry"]["location"])
    end
  end

  # GET /locations/new
  def new
    @location = Location.new
  end

  # GET /locations/1/edit
  # session type location can edit own information
  # session type user
  def edit
    @location = Location.find(params[:id])
    if session[:type] == 'user'
      @trip = Trip.find(params[:id])
    end
  end

  # create new location -- capability not accessible
  def create
    @location = Location.new(location_params)
    redirect_to @location
  end

  # PATCH/PUT /locations/1
  # PATCH/PUT /locations/1.json
  def update
    # @trip = Trip.find(params[:id])
    # @location = Location.find(params[:id])
    # @trip.toggle![:reserved]
    # @trip.save
    # redirect_to location_path(@location)


    respond_to do |format|
      if @location.update(location_params)
        format.html { redirect_to '/locations', notice: 'Location was successfully updated.' }
      else
        format.html { render :edit }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations/1
  # DELETE /locations/1.json
  def destroy
    @location.destroy
    respond_to do |format|
      format.html { redirect_to locations_url, notice: 'Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit(:name, :email, :password_hash, :address, :description, :subject, :accessibility, :image_url)
    end
end
