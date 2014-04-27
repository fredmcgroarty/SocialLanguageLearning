require 'spec_helper'

describe 'Viewing edit user profile' do 

	context "after registration" do
		before(:each) do
			@fred = create(:user)
			create(:user_profile, user: @fred)
			login_as @fred
			visit '/' 
		end 

		it "asks for users language profile" do
			expect(page).to have_content 'Create your language profile'
			visit '/user_profiles/1/edit'
			expect(page).to have_select("user_profile[native_lang]")
			expect(page).to have_select("user_profile[first_lang]")
			expect(page).to have_select("user_profile[second_lang]")
		end

		it "shows basic profile data" do 
			
		end
	end

end