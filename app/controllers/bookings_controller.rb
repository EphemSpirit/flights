class BookingsController < ApplicationController

  def new #build via the flight params
    @booking = Booking.new
    @flight = Flight.find(params[:booking][:flight_id])
    @num_passengers = params[:booking][:passengers].to_i
    @num_passengers.times do
      @booking.passengers.build
    end

  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

    def booking_params
      params.require(:booking).permit(:flight_id, :passengers, passenger_attributes: [:name, :email])
    end

end
