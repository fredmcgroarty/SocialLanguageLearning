require 'spec_helper'

describe 'editting users profile' do
  before(:each) do
		@mark = create(:user)
		create(:user_total_profile_1)
  	@tiff = create(:user)
		create(:user_total_profile_2)
    visit '/user_profile/edit' 
  end

	context "user profile display" do 
		before(:each) do
      login_as @mark
  		visit '/user_profile/edit' 
  		expect(current_path).to eq edit_user_profile_path(@mark)
      expect(current_path).to eq edit_user_profile_path(current_user)
      expect(page).to have_content(@mark.user_info && @mark.user_profile && @mark.email)
      expect(current_path).to eq edit_user_profile_path
      click_button 'Update User profile'
      expect(page).to have_content 'Update successful'
  	end
end
  end


