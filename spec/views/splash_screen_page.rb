require 'spec_helper'

describe 'splash page' do 
	before(:each) do 
		visit '/'
	end

	it "has sign in" do 
			within(:css, ".sign-in") do
			expect(page).to have_css '#user_email'
			expect(page).to have_css '#user_password'
		end
	end

	it "has sign up" do 
			within(:css, ".sign-up") do
			expect(page).to have_css '#user_email'
			expect(page).to have_css '#user_password'
			expect(page).to have_css '#user_password_confirmation'
		end
	end
end