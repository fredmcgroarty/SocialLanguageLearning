class HomeController < ApplicationController

	respond_to :html, :xml, :json
  
  def welcome
  	@unread_count = current_user.mailbox.inbox(:read => false).count(:id, :distinct => true).to_s
  	flash[:notice] = greeter_flash

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


  def greeter_flash
  	if current_user.first_name.nil? && current_user.last_name.nil?
  		return "Hi #{current_user.email}! Please update your profile"
  	elsif @unread_count.nil?
  		return "Hi #{current_user.first_name}!"
  	else 
  		return "Hi #{current_user.first_name}, you have " +@unread_count + " new messages"
  	end
  end



end
