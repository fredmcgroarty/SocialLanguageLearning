require 'spec_helper'

describe User do

	context "database relationships" do 
	
		before (:each) do 
			@user = create(:user)
		end

		it "registers in database" do 
			expect(User.first).to eq @user
		end

		it "creates an instance of the User Profile class" do 
			expect(User.first.user_profile.first_name).to eq nil
			expect(User.first.user_profile).to eq @user.user_profile

		end

	end

end
