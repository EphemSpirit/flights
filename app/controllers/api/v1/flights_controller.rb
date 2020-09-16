class Api::V1::FlightsController < ApplicationController
  before_action :find_flight, only: :show

  def index
    @flights = Flight.all

    render json: @flights
  end

  def show
    render json: @flight
  end

  private

    def find_flight
      @flight = Flight.find(params[:id])
    end

end
