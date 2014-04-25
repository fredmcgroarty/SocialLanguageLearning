require 'spec_helper'

describe 'Home page' do

	context "user isnt logged in" do 

		it "should have the content 'langlang'" do
			visit '/'
			expect(page).to have_content('langlang')
		end
	
		xit "should have login and sign in forms" do
			visit '/'
			expect(page).to have_css('.sign-in-form')
			expect(page).to have_css('.sign-up-form')
		end
	
		it "should have login and sign in forms" do
			visit '/'
			expect(page).to have_link('Sign in')
			expect(page).to have_link('Sign up')
		end
	end

	context "user is logged in" do 

		it "should see the sign out button" do 
			login_as create(:user)
			visit '/'
			expect(page).to have_content("Sign out")
		end
	end
end