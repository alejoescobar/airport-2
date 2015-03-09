class AirlinesController < ApplicationController
  def index
    @airlines = Airline.all
  end

  def show
    @airline = Airline.find(params[:id])
  end

  def new
    @airline = Airline.new
  end

  def edit
    @airline = Airline.find(params[:id])
  end

  def create
    @airline = Airline.new(airline_params)

    if @airline.save
      redirect_to @airline
    else
      render 'new'
    end
  end

  def update
    @airline = Airline.update(airline_params)

    if @airline.updage
      redirect_to @airline
    else
      render 'edit'
    end
  end

  def destroy
    @airline = Airline.find(params[:id])
    @airline.destroy

    redirect_to airlines_path
  end

  private
  def airline_params
    params.require(:airline).permit(:name)
  end
end
