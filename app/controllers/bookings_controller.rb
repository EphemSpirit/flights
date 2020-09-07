class BookingsController < ApplicationController

  def new

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
      params.require(:booking).permit(:flight_id, :passengers)
    end

end
