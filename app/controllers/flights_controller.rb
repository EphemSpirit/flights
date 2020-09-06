class FlightsController < ApplicationController

  def index
    @airports = Airport.all.map{ |x| [x.code, x.id] }
    @dates = Flight.all.map{ |x| [x.departure] }
    @passengers = [[1], [2], [3], [4]]

    @results = Flight.where(["start = ? AND finish = ? AND departure = ?", flight_params[:from_airport], flight_params[:to_airport], flight_params[:departure]])
  end

  private

    def flight_params
      params.require(:flight).permit(:from_airport, :to_airport, :departure)
    end

end
