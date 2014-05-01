class LessonsController < ApplicationController

  def index
    @lessons = Lesson.all
  end  

  def show
    @lessons = Lesson.find_by(uid: params[:id])
    @time_in_seconds = @lessons.end_time.to_i - Time.now.to_i
    raise 'Oops' unless @lessons
  end 


end
