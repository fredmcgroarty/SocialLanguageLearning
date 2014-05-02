class LessonsController < ApplicationController

  def index
  	return redirect_to_sign_in if missing_information
    @lessons = Lesson.all
  end  

  def show
  	return redirect_to_sign_in if missing_information
    @lessons = Lesson.find_by(uid: params[:id])
    @time_in_seconds = @lessons.time_to_seconds
    raise 'Oops' unless @lessons
  end 


end
