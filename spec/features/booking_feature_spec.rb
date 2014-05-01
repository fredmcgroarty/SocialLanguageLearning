require 'spec_helper'

describe "existing booking" do 

  before(:each) do
    @mark = create(:user)
    create(:user_total_profile_1, user: @mark)
    @french = create(:user)    
    create(:user_total_profile_5, user: @french)
    @tiff = create(:user)    
    create(:user_total_profile_3, user: @tiff)
    @spanish = create(:user)    
    create(:user_total_profile_6, user: @spanish)
    @france_lower = create(:user)    
    create(:user_total_profile_7, user: @france_lower)

    login_as @mark
  end

  it "create new booking" do
    visit '/user_profiles/1'
    within(:css, ".new_booking.new_booking") do
 select "2014", :from => "booking[start_time(1i)]"
 select "May", :from => "booking[start_time(2i)]"
 select "30", :from => "booking[start_time(3i)]"
 select "09", :from => "booking[start_time(4i)]"
 select "00", :from => "booking[start_time(5i)]"
  fill_in 'booking[length]', with: '1'
 click_button 'Submit'
end
 expect(@mark.bookings.last.start_time).not_to eq(nil)
 expect(@mark.bookings.last.start_time).to eq("30 May 2014 09:00:00 UTC +00:00")

end
end