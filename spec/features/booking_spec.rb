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
			expect(page).to have_content 'You have 1 unread message'
			expect(page).to have_content 'Mark is '
		end
	end

	context "French sees the English speakers request" do
		before(:each) do
  		login_as @english_first_lang
  	end

		it "should changes the status to accepted" do
  		booking_lesson(@french_first_lang)
			login_as @french_first_lang
			visit '/'
			expect(page).to have_content 'Appointment with Mark is awaiting confirmation'
			click_link 'View Booking'
			expect(page).to have_content ' Booking requested by : Mark M Starting at: 30 May 09:00AM until 30 May 2014 10:00AM'
			find(:css, "#booking_accepted").set(true)
			within(:css,'.edit_booking') do 
				click_button 'Submit'
			end
			expect(page).to have_content 'Your booking was updated succesfully'
			expect(Booking.last.accepted).to eq true
		end

		it "displays the time the lesson is due to begin" do 
			@booking = create(:booking)
 			login_as @english_first_lang
			visit '/'
			expect(page).to have_content ' Appointment with Mark has been confirmed. Starts at 05:00:00 AM, for 1 hour'
		end
	end
end


