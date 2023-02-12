require 'rails_helper'

RSpec.describe 'Creating a booking', type: :system do
  scenario 'valid inputs' do
    visit root_path
    click_on 'Find Flights'
    first('.radio').select_option
    click_on 'Submit'
    fill_in 'booking_passengers_attributes_0_first_name', with: 'John'
    fill_in 'booking_passengers_attributes_0_last_name', with: 'Smith'
    fill_in 'booking_passengers_attributes_0_email', with: 'JohnSmith@gmail.com'
    click_on 'Submit'

    expect(page).to have_content('John')
    expect(page).to have_content('Smith')
    expect(page).to have_content('JohnSmith@gmail.com')
  end

  scenario 'invalid inputs' do
    visit root_path
    click_on 'Find Flights'
    first('.radio').select_option
    click_on 'Submit'
    fill_in 'booking_passengers_attributes_0_first_name', with: 'John'
    click_on 'Submit'

    message = page.find("#booking_passengers_attributes_0_last_name").native.attribute("validationMessage")
    expect(message).to eq('Please fill out this field.')
  end
end