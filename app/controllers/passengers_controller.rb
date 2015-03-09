class PassengersController < ApplicationController
  def index
    @flight = Flight.find(params[:flight_id])
  end

  def new
    @passenger = Passenger.new
  end

  def show
    @flight = Flight.find(params[:flight_id])
    @passenger = @flight.passengers.find(params[:id])
  end

  def create
    @flight = Flight.find(params[:flight_id])
    @passenger = @flight.passengers.create(passenger_params)

    @passenger.save
    redirect_to flight_passenger_url(@flight, @passenger)
  end

  private
  def passenger_params
    params.require(:passenger).permit(:flight_id, :name, :passport)
  end
end
