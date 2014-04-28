# require 'spec_helper'

# describe 'editting users profile' do
#   before(:each) do
# 		@mark = create(:user)
# 		create(:user_total_profile_1)
#   	@tiff = create(:user)
# 		create(:user_total_profile_2)
#   end

# 	context "security" do 
# 		before(:each) do
#       login_as @mark
#   		visit '/user_profiles/1/edit' 
#   		expect(current_path).to eq edit_user_profile_path(@mark)
#   	end

# 		it "Mark can't edit Tiff's profile" do 
# 			visit '/'
# 			click_link 'Settings'
# 			expect(current_path).to eq edit_user_profile_path(@mark)
# 			visit '/user_profiles/2/edit'
# 			save_and_open_page
# 			expect(current_path).to eq('/') 
# 		end
# 	end

#   context "if no image is uploaded" do 
# 	context "user should see its curent profile records" do 
# 		before(:each) do
#       login_as @mark
#   		visit '/user_profile/edit' 
#   		expect(current_path).to eq edit_user_profile_path
#   	end

# 		it "should display user profile" do 
#             visit '/user_profile/edit'
#             expect(current_path).to eq edit_user_profile_path(current_user)
#             expect(page).to have_content(@mark.user_info && @mark.user_profile)
           
# 	end

  
     

#   end
# end

#   	xit "Tiff can add a photo" do
#   	end
#   end
# end
