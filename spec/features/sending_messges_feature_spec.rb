require 'spec_helper'

describe 'Spec Helper' do 

	context "one user messaging another" do 
		before(:each) do 
			@mark = create(:user)
			create(:user_total_profile_2, user: @mark)
			@tiff = create(:user)
			create(:user_total_profile_3, user: @tiff)
		end

		it "Fred messages Tiff" do
			login_as @mark 
			visit '/user_profiles/3'
			within(:css, ".col-xs-6.col-md-5.col-md-offset-1") do
				click_link 'Message'
			end
			fill_in "Subject", :with => 'Hello'
			fill_in "body", :with => 'This is a message'
			click_button 'Send message'
			expect(@tiff.mailbox.inbox.last.subject).to eq "Hello"
		end
 
	end
end





