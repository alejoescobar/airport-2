class FlightsController < ApplicationController
  def index
    @flights = Flight.all
  end

  def show
    @flight = Flight.find(params[:id])
  end

  def new
    @flight = Flight.new
    @flight.build_departure
    @flight.build_arrival
  end

  def edit
    @flight = Flight.find(params[:id])
  end

  def create
    @flight = Flight.new(flight_params)

    if @flight.save
      redirect_to @flight
    else
      render 'new'
    end
  end

  def update
    @flight = Flight.update(flight_params)

    if @flight.update
      redirect_to @flight
    else
      render 'edit'
    end
  end

  def destroy
    @flight = Flight.find(params[:id])
    @flight.destroy

    redirect_to flights_path
  end

  private
  def flight_params
    params.require(:flight).permit(:airline_id, :number, departure_attributes: [:date, :status, :flight_id], arrival_attributes: [:date, :status, :fligth_id])
  end
end
