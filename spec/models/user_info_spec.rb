require 'spec_helper'

describe UserInfo do
	context "database relationships" do 
		before (:each) do 
			create(:user)
			@user_info = create(:user_info, user: User.first)
		end

		it "is linked to user" do 
			expect(User.first.user_info).to eq @user_info
		end
	end
end
