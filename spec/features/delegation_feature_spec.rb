require 'spec_helper'

describe "Delegations" do
	
	context "when routing method calls" do

		it "should route first_name to User Profile" do
			visit '/'
			@fred = create(:user)
			create(:user_profile, user: User.first)
			expect(@fred.first_name).to eq @fred.user_profile.first_name
		end

		it "should route all applicable attributes" do
			visit '/'
			@fred = create(:user)
			@mark = create(:user)
			create(:user_total_profile_1)
			expect(@mark.first_name).to eq "Mark"
			expect(@mark.last_name).to eq "M"
			expect(@mark.native_lang).to eq "English"
			expect(@mark.first_lang).to eq "French"
			expect(@mark.second_lang).to eq "Spanish"
		end

	end

end

