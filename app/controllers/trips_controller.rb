class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  # def new
  #   @trip Trip.new
  # end

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

  # def edit
  # end

  def update

  end

  def destroy

  end

  private
  def trip_params
    return params.require(:trip).permit(:passenger_id, :driver_id, :rating)
  end

end
