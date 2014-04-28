class HomeController < ApplicationController
  def welcome
  	@user_list = User.all
  	@user = current_user
  		# redirect_to '/'
  	
  end
end
