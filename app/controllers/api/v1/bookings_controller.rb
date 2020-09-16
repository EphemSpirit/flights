class Api::V1::BookingsController < ApplicationController
  before_action :find_booking, only: :show

  def index
    @bookings = Booking.all

    render json: @bookings
  end

  def show
    render json: @booking
  end

  private

    def find_booking
      @booking = Booking.find(params[:id])
    end

end
