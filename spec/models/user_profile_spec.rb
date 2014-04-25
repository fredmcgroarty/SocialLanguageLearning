require 'spec_helper'

describe UserProfile do

	context "database relationships" do 

		before (:each) do 
			create(:user)
			@user_profile = create(:user_profile, user: User.first)
		end

		it "is linked to the user" do 
			expect(User.first.user_profile).to eq @user_profile
		end

	end

end