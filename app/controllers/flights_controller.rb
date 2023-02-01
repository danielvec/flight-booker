class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map{ |a| [ a.code, a.id ]}
    @date_options = Flight.all.map{ |d| [ d.time.strftime("%m/%d/%Y") ]}.uniq
  end
end
