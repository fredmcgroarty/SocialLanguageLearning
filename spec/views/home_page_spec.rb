require 'spec_helper'

describe 'Home page' do

	it "should have the content 'langlang'" do
		visit '/'
		expect(page).to have_content('langlang')
	end

	context "user isnt logged in" do 
	
		it "should have login and sign in forms" do
			visit '/'
			expect(page).to have_link('Sign in')
			expect(page).to have_link('Sign up')
		end

		context 'logged in' do
			before do
				@tiff = create(:user)
				login_as @tiff
				create(:user_total_profile_2, user: @tiff)
			end
			
			it "cant see references to other profiles" do
				expect(page).not_to have_css '.avatar-profile-info' 
			end
		end

		it "should have devise registration form on homepage" do

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

describe "personalised Home Page" do 
	before(:each) do
		@fred = create(:user)
		create(:user_profile, user: @fred)
		@mark = create(:user)
		create(:user_total_profile_1, user: @mark)
		@tiff = create(:user)
		create(:user_total_profile_2, user: @tiff)
		login_as @fred
		visit '/'
	end

	context "user has registered account butxw empty language profile" do 

		it "sees a link to update their language info if empty" do 
			expect(page).not_to have_content("Sign up" && "Sign in")
			expect(page).to have_content "You need to create your language profile"
		end
		
	end

		it "can see an 'edit my profile' link" do 
			expect(page).to have_link 'Settings'
		end

	context "user has registered account and completed language profile" do 

		it "can see a list of users' profiles" do 
		@fred = create(:user)
		create(:user_profile, user: @fred)
		@mark = create(:user)
		create(:user_total_profile_1, user: @mark)
		@tiff = create(:user)
		create(:user_total_profile_2, user: @tiff)
		logout
		login_as @mark
		visit '/'

				expect(page).to have_content ('Fred')
				expect(page).to have_content ('Mark')
		end


	end
end