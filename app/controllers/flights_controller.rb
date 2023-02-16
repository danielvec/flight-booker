class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map{ |a| [ a.code, a.id ]}
    @date_options = Flight.all.map{ |d| [ d.time.strftime("%m/%d/%Y") ]}.uniq.sort
    @flights = Flight.all.matching_flights(params[:origin_id], params[:destination_id])
    @flights = @flights.same_date(params[:date]) if params[:date]
    @flights = @flights.sort_by {|f| f.price }
    if @flights.empty?
      flash.now[:notice] = "No flights found." if params[:searching]
    end
  end
end
