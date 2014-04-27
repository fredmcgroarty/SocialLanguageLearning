require 'spec_helper'

describe "Profile information on display" do 

	context "didn't upload an avatar" do 
		before(:each) do
			@no_avatar = create(:user)
			create(:user_without_avatar, user: @no_avatar)
		end

		xit "should display a default image" do 
			visit '/'
			expect(page).to have_css '.avatar-profile-info' 
		end
	end
end
