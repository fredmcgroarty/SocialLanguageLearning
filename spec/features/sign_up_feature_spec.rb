require 'spec_helper'

describe 'registering' do
  before(:each) do
    @fred = create(:user)
  end
  
  context "on splash screen" do 

    it 'successfully signs up the user and redirects to profile page' do
      visit '/'
      within(:css, "col-md-7.welcome-right") do
        fill_in 'Email', with: 'a@example.com'
        fill_in 'Password', with: '12345678'
        fill_in 'Password confirmation', with: '12345678'
        click_button 'Join POLYGLT'
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
        select "Male", :from => "user_profile[gender]"
        attach_file 'user_profile_picture', Rails.root.join('spec/images/owl-in-a-hat.jpg')
        click_button 'Update User profile'
        expect(User.first.user_profile).not_to eq 'nil'
        expect(current_path).to eq '/'
        expect(page).to have_content 'Update successful'
      end
  
      it "should prompt the user to complete their language profile" do
        login_as @fred
        create(:user_profile, user: @fred)
        visit '/'
        expect(page).to have_content "You need to create your language profile"
      end

      
    end
  end
end