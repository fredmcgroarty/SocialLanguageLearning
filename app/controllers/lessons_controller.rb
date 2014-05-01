class LessonsController < ApplicationController

  def index
    @lessons = Lesson.all
  end  

  def show
    @lessons = Lesson.find_by(uid: params[:id])
    @time_in_seconds = @lessons.time_to_seconds
    raise 'Oops' unless @lessons
  end 


end
