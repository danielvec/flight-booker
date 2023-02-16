require 'rails_helper'

RSpec.describe 'Finding a flight', type: :system do
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