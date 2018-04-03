class DriversController < ApplicationController
  def index
    @drivers = Driver.all
  end

  def new
    @driver = Driver.new
  end

  def create
    driver = Driver.new(driver_params)

    if driver.save
      redirect_to drivers_path
    end
  end

  def show
    @driver = Driver.find(params[:id])
  end

  def edit
    @driver = Driver.find(params[:id])
  end

  def update
    driver = Driver.find(params[:id])

    driver.assign_attributes(driver_params)

    if driver.save
      redirect_to driver_path(driver)
    end
  end

  def destroy
    driver = Driver.find(params[:id])

    if driver.destroy
      redirect_to drivers_path
    end
  end

  private
  def driver_params
    return params.require(:driver).permit(:name, :vin)
  end
end
