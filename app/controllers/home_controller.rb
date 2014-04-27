class HomeController < ApplicationController
  def welcome
  	@user_list = User.all
  	@user = current_user
  	if current_user && current_user.user_profile.nil?
  		redirect_to '/user_profiles/new'
  	end
  end
end
