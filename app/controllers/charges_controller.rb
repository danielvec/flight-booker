class ChargesController < ApplicationController
  def new
    @booking = Booking.find(params[:charge][:booking_id])
    @passengers = params[:charge][:passengers].to_i
    @flight = Flight.find(@booking.flight_id)
    @price = @flight.price * @passengers
  end
  
  def create
    @price = params[:price].to_i
  
    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: params[:stripeToken]
    )
  
    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: (@price*100),
      description: 'Rails Stripe customer',
      currency: 'usd'
    )
  
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
