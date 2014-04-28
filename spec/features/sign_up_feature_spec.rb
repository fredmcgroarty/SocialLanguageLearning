require 'spec_helper'

describe 'registering' do
    before(:each) do
      @fred = create(:user)
    end

  context "on splash screen" do 

    it 'successfully signs up the user and redirects to profile page' do
      visit '/'
      within(:css, ".sign-up") do
        fill_in 'Email', with: 'a@example.com'
        fill_in 'Password', with: '12345678'
        fill_in 'Password confirmation', with: '12345678'
        click_button 'Sign up'
      end
      expect(current_path).to eq '/'
      expect(page).to have_content "You need to create your language profile"    
    end

  context "On user home page without profile" do 

    it "fred adds his profile" do
      login_as @fred
      visit '/'
      click_link 'You need to create your language profile'
      fill_in 'First name', with: 'test'
      fill_in 'Last name', with: 'test'
      select "1990", :from => "user_profile[dob(1i)]"
      select "April", :from => "user_profile[dob(2i)]"
      select "20", :from => "user_profile[dob(3i)]"
      fill_in 'Gender', with: 'male'
      attach_file 'user_profile_picture', Rails.root.join('spec/images/owl-in-a-hat.jpg')
      click_button 'Create User profile'
      expect(User.first.user_profile).not_to eq 'nil'
      expect(current_path).to eq '/'
      expect(page).to have_content 'Account created, please update your language profile'
    end

    it "should prompt the user to complete their language profile" do
      login_as @fred
      create(:user_profile, user: @fred)
      visit '/'
      expect(page).to have_content "You need to create your language profile"
      click_link 'Settings'
      select "English", :from => "user_profile[native_lang]"
      select "French", :from => "user_profile[first_lang]"
      select "Spanish", :from => "user_profile[second_lang]"
      click_button 'Update User profile'
      expect(current_path).to eq '/'
      expect(User.first.user_profile.native_lang).to eq ('English')
      expect(page).to have_content "You have succesfully updated your profile"
    end


  end

  context "a user has registered and added a profile" do 

  end
  
end
end