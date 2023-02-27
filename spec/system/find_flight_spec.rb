require 'rails_helper'

RSpec.describe 'Finding a flight', type: :system do
  before do 
    Airport.create!([ {code: "LAX", id: 1}, {code: "SFO", id:2}] )
    5.times do Flight.create!( {time: DateTime.current.beginning_of_day + rand(1.0..2.0), 
                                 duration: 60, 
                                 origin_id: 1, 
                                 destination_id: 2, 
                                 price: rand(150..250)} )
    end
  end
  scenario 'valid inputs' do
    visit root_path
    click_on 'Find Flights'

    expect(page).to have_content('LAX -> SFO')
    expect(page).not_to have_content('No flights found.')
  end

  scenario 'invalid inputs' do
    visit root_path
    select('LAX', :from => 'destination_id')
    click_on 'Find Flights'
    
    expect(page).to have_content('No flights found.')
  end
end