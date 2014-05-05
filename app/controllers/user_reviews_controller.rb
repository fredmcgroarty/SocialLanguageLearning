class UserReviewsController < ApplicationController

	def new
		@user_review = UserReview.new
	  @user = current_user
	  @lesson = Lesson.find (params[:lesson_id])
	  rescue
    	flash[:notice] = "You have reached this page in error"
    	redirect_to '/'
    return
	end

	def create
	  @user = current_user
	  @lesson = Lesson.find (params[:lesson_id])
	  rescue
    	flash[:notice] = "You have reached this page in error"
    	return redirect_to '/'
    else
		  @user_review = UserReview.new params_permit
		  unless @lesson.booking.student_id == @user.id || @lesson.booking.user_id == @user.id
		  	flash[:alert] = "You have reached this page in error"
		  	return redirect_to '/'
		  end
		  @user_review.by_user_id = @user.id
		  @user_review.for_user_id = (@lesson.booking.student_id == @user.id ? @lesson.booking.user_id : @lesson.booking.student_id )
		  @user_review.topic_id = @lesson.booking.topic_id
		  if @user_review.save!
			  flash[:notice] = "Your review has been saved!"
			  redirect_to '/'
			else
				flash[:alert] = "There has been an error"
				redirect_to '/'
			end
	 	end

 	 def params_permit
 	 	 params[:user_review].permit(:for_user_id, :by_user_id, :rev1, :rev2, :score, :topic, :completed)
 	 end

end
