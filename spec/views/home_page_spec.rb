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

	context "user has registered account and profile" do 
			before(:each) do
				@fred = create(:user)
				create(:user_profile)
				@mark = create(:user)
				create(:user_total_profile_1)
				@tiff = create(:user)
				create(:user_total_profile_2)
				login_as @fred
				visit '/'
			end

		it "sees a link to update their language info if empty" do 
			expect(page).not_to have_content("Sign up" && "Sign in")
			expect(page).to have_content "Create your language profile"
		end

		it "can see an 'edit my profile' link" do 
			expect(page).to have_link 'Settings'
		end

		it "can see a list of users' profiles" do 
			expect(page).to have_content ('Mark M')
			expect(page).to have_content('Tiff C')
		end



	end
end
end