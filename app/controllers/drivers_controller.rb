class DriversController < ApplicationController
  def index
    @drivers = Driver.all
  end

  def new
    new_driver = Driver.new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def driver_params
    return params.require(:driver).permit(:name, :vin)
  end
end
