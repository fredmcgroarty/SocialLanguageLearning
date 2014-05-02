require 'spec_helper'

describe "bookings" do 
  	before(:each) do
  	  @english_first_lang = create(:user)
  	  @english_first_lang.user_profile = create(:user_total_profile_1)
  		@french_first_lang = create(:user)    
  	  @french_first_lang.user_profile = create(:user_total_profile_2)
  	end

  context "English native speaker books lesson with French native speaker" do
  	before(:each) do
  		login_as @english_first_lang
  		booking_lesson(@french_first_lang)
  	end

  	it "should inform the other user via an insite message" do 
			expect(@french_first_lang.mailbox.inbox.last.subject).to eq "New booking request!"
		end

		it "should recieve an insite message" do 
			login_as @french_first_lang
			visit '/'
			expect(page).to have_content 'You have 1 unread messages'
		end
	end

	context "French sees the English speakers request" do
		before(:each) do
  		login_as @english_first_lang
  		booking_lesson(@french_first_lang)
  	end

		it "should changes the status to accepted" do
			login_as @french_first_lang
			visit '/'
			expect(page).to have_content 'Appointment with Mark Starts at 09:00:00 AM'
			click_link 'View Booking'
			find(:css, "#booking_accepted").set(true)
			within(:css,'.edit_booking') do 
				click_button 'Submit'
			end
			expect(page).to have_content 'Your booking was updated succesfully'
			expect(Booking.last.accepted).to eq true
		end


	end
end


