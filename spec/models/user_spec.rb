require 'spec_helper'

describe User do

	context "database relationships" do 
	
		before (:each) do 
			@user = create(:user)
		end

		it "registers in database" do 
			expect(User.first).to eq @user
		end

	end

end
