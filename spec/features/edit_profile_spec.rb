require 'spec_helper'

describe 'editting users profile' do
  before(:each) do
		create(:user_total_profile_1)
		@tiff = create(:user)
  end

	context "security" do 
		before(:each) do
      login_as @tiff
  		visit '/user_profiles/1/edit' 
  		expect(current_path).to eq edit_user_profile_path(@tiff)
  	end

		it "a user can't edit other users' profiles" do 
			
		end

	end

  context "if no image is uploaded" do 

  	xit "Tiff can add a photo" do
  	end
  end
end

