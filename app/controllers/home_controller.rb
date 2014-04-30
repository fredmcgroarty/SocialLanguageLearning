class HomeController < ApplicationController

	respond_to :html, :xml, :json
  
  def welcome
  	@user_list = User.all
  	@user = current_user
  	@topics = Topic.all
  	@bookings = Booking.all
  	@userbookings = []
  	if @user
	  	@bookings.each do |x|
	  		if x.user_id == @user.id || x.student_id == @user.id
	  			@userbookings << x
	  		end
	  	end
	  end
		unless @user && @user.user_profile
			flash[:warning] = "You need to update your profile!"
		end
		
  end

end
