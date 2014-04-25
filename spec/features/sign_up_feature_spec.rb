require 'spec_helper'

describe 'registering' do

	it 'successfully signs up the user' do
    visit '/users/sign_up'
    fill_in 'Email', with: 'a@example.com'
    fill_in 'Password', with: '12345678'
    fill_in 'Password confirmation', with: '12345678'
    click_button 'Sign up'		
    expect(page).to have_content 'signed up successfully'
	end

end