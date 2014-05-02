class UserReviewsController < ApplicationController

	def new
		@user_review = UserReview.new
	    @user = current_user
	end

	def create
	    @user_review = UserReview.new params_permit
	    @user = current_user
	    @user_review.save!

 	 end

 	 def params_permit
 	 	params[:user_review].permit(:for_user_id, :by_user_id, :rev1, :rev2, :score, :topic, :completed)
 	 end
end
