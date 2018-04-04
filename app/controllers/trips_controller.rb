class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  # def new
  #   @trip Trip.new
  # end

  def create
    @trip = Trip.new
  end

  def show

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
