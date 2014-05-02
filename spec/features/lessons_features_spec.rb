require 'spec_helper'

describe "home page" do 

  before(:each) do
    @mark = create(:user)
    create(:user_total_profile_1, user: @mark)
    @french = create(:user)    
    create(:user_total_profile_5, user: @french)
    login_as @mark
  end  

  context "no lesson booked" do

    it "does not have go to lesson button when no lesson is booked" do
      visit '/'
      expect(page).not_to have_content('GO TO LESSON')
    end
  end

  context "lesson booked" do
    before(:each) do
      create(:booking)
    end

    it "does not display go to lesson button if outside of lesson window" do
      visit '/'
      expect(page).not_to have_content('GO TO LESSON')
    end

    it "displays the go to lesson button if inside the lesson window" do
      time_new = Time.utc(2014,10,1,5,10,0)
      Timecop.freeze(time_new)
      visit '/'
      expect(page).to have_content('GO TO LESSON')
    end

    it "does not display the go to lesson button after the booking time has expired" do
      time_new = Time.utc(2014,10,1,6,0,1)
      Timecop.freeze(time_new)
      visit '/'
      expect(page).not_to have_content('GO TO LESSON')
    end

    it "displays the go to lesson button if inside the lesson window" do
      time_new = Time.utc(2014,10,1,5,10,0)
      Timecop.freeze(time_new)
      visit '/'
      click_link 'GO TO LESSON'
      expect(page).to have_content('Start chatting below!')
    end

  end

end  