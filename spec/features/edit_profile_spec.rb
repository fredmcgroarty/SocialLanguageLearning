require 'spec_helper'

describe 'editting users profile' do

  before(:each) do
		@mark = create(:user)
		create(:user_total_profile_1)
  	@tiff = create(:user)
		create(:user_total_profile_2)
  end

	context "user profile display" do 
	
    it "should retain the information from previous sign up" do 
      login_as @mark
  		visit '/user_profile/edit' 
      expect(page).to have_content(@mark.user_info && @mark.user_profile && @mark.email)
      expect(current_path).to eq edit_user_profile_path
      click_button 'Update User profile'
      expect(page).to have_content 'Update successful'
    end

    it "a user can update his profile picture" do
      login_as @mark
      visit '/user_profile/edit'
      expect(User.first.picture.url).to eq ('/pictures/original_missing.png') 
      within(:css, ".col-md-4.edit-prof") do
        attach_file 'user_profile_picture', Rails.root.join('spec/images/profile.jpg')
        click_button 'Update User profile'
      end
      expect(find('#mini-profile-avatar')['src']).to match 'profile.jpg'
      # expect(User.first.picture.url).not_to eq ('/pictures/original_missing.png') 
      # expect(@mark.user_profile.picture_file_name).to eq ('/pictures/original_missing.png') 
    end
  end
end

