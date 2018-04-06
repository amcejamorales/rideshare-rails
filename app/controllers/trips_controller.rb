class TripsController < ApplicationController
  def index
    @trips = Trip.all.order(:id)
    if params[:search]
      @trips = Trip.search(params[:search]).order("created_at ASC")
    else
      @trips = Trip.all.order('created_at ASC')
    end
  end

  def new
    @trip = Trip.new
  end

  def create
    passenger = Passenger.find_by(id: params[:passenger_id])
    driver = Driver.all.sample
    cost = rand(1..5000)
    date = Date.today
    trip = passenger.trips.new(passenger: passenger, driver: driver, cost: cost, date: date)

    if trip.save
      redirect_to trip_path(trip)
    end
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def edit
    @trip = Trip.find(params[:id])

  end

  def update
    @trip = Trip.find(params[:id])
    @trip.assign_attributes(trip_params)

    if @trip.save
      redirect_to trips_path
    end


  end

  def destroy
    trip = Trip.find(params[:id])

    if trip.destroy
      redirect_to trips_path
    end

  end

  private
  def trip_params
    return params.require(:trip).permit(:passenger_id, :driver_id, :rating)
  end

end
