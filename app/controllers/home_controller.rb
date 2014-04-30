class HomeController < ApplicationController
  
  def welcome
  	@user_list = User.all
  	@user = current_user
		unless @user && @user.user_profile
			flash[:warning] = "You need to update your profile!"
		end
  end

end
