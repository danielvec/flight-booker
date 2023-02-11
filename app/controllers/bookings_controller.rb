class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight])
    @origin = Airport.find(@flight.origin_id)
    @destination = Airport.find(@flight.destination_id)
    @passengers = (params[:passengers]).to_i
    @passengers.times { @booking.passengers.build }
  end

  def create
    @flight = Flight.find(params[:booking][:flight])
    @booking = @flight.bookings.build(booking_params)

    if @booking.save
      redirect_to @booking
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :first_name, :last_name, :email])
  end
end
