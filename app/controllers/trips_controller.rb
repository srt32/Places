class TripsController < ApplicationController
  include ControllerYelp
  include CampusCalendar

  # GET /trips
  # GET /trips.json
  def index
    @user = current_user
    @trips = @user.trips.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trips }
    end
  end

  # GET /trips/1
  # GET /trips/1.json
  def show
    @user = current_user
    @trip = Trip.find(params[:id])
    @schools = @trip.schools
    @json = @schools.to_gmaps4rails
    @school0 = nil

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @trip }
    end
  end

  # GET /trips/new
  # GET /trips/new.json
  def new
    @user = current_user
    @trip = Trip.new
    3.times { @trip.stops.build }

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @trip }
    end
  end

  # GET /trips/1/edit
  def edit
    @user = current_user
    @trip = Trip.find(params[:id])
  end

  # POST /trips
  # POST /trips.json
  def create
    @user = current_user
    @trip = @user.trips.new(params[:trip])

    respond_to do |format|
      if @trip.save
        format.html { redirect_to root_path, notice: 'Trip was successfully created.' }
        format.json { render json: @trip, status: :created, location: @trip }
      else
        format.html { render action: "new" }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /trips/1
  # PUT /trips/1.json
  def update
    @user = current_user
    @trip = Trip.find(params[:id])

    respond_to do |format|
      if @trip.update_attributes(params[:trip])
        format.html { redirect_to user_trip_path(@trip), notice: 'Trip was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy

    respond_to do |format|
      format.html { redirect_to user_trips_path }
      format.json { head :no_content }
    end
  end
end
