require 'spec_helper'

describe UserProfile do

	context "database relationships" do 

		before (:each) do 
			@user_and_profile = create(:user)
		end

		it "is linked to the user" do 
			expect(User.first).to eq @user_and_profile
		end

	end


end