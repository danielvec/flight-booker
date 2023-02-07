class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight])
    @origin = Airport.find(@flight.origin_id)
    @destination = Airport.find(@flight.destination_id)
    console
  end
end
