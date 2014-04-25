require 'spec_helper'

describe 'registering' do

	it 'successfully signs up the user and redirects to profile create page' do
    visit '/users/sign_up'
    fill_in 'Email', with: 'a@example.com'
    fill_in 'Password', with: '12345678'
    fill_in 'Password confirmation', with: '12345678'
    click_button 'Sign up'		
    expect(page).to have_content 'signed up successfully'
    expect(current_path).to eq '/user_profiles/1'
	end



end