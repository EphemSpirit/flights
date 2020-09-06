class FlightsController < ApplicationController

  def index
    @airports = Airport.all.map{ |x| [x.code, x.id] }
    @dates = Flight.all.map{ |x| [x.departure.strftime("%Y-%m-%d")] }
    @passengers = [[1], [2], [3], [4]]

    if params[:flight]
      @results = Flight.where(["start = ? AND finish = ? AND departure = ?", flight_params[:from_airport], flight_params[:to_airport], flight_params[:departure]])
    end

  end

  private

    def flight_params
      params.require(:flight).permit(:from_airport, :to_airport, :departure, :passengers)
    end

end
