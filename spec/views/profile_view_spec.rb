require 'spec_helper'

describe "Profile information on display" do 

	context "didn't upload an avatar" do 
		before(:each) do
			@no_avatar = create(:user)
			create(:user_without_avatar, user: @no_avatar)
		end

		it "has a default picture" do 
			expect(@no_avatar.picture.url).to eq "/pictures/original_missing.png"
		end
	end
end
