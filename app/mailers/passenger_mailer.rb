class PassengerMailer < ApplicationMailer

  def thank_you(passenger, flight)
    @passenger = passenger.name
    @flight = flight

    mail to: passenger.email, subject: "Thank you for booking with us!"
  end
end
