class DriversController < ApplicationController
  def index
    @drivers = Driver.all
  end

  def new
    new_driver = Driver.new(driver_params)
  end

  def create
    driver = Driver.find(params[:id])

  end

  def show
    @driver = Driver.find(params[:id])
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
