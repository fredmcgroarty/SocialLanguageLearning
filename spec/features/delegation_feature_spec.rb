require 'spec_helper'

describe "Delegations" do
	
	context "When routing method calls" do

		it "Should route first_name to User_Profile" do
			visit '/'
			@fred = create(:user)
			expect(@fred.first_name).to eq "Fred"
			expect(@fred.first_name).to eq @fred.user_profile.first_name

		end

	end

end