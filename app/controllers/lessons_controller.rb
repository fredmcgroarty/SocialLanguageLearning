class LessonsController < ApplicationController

  def index
    @lessons = Lesson.all
  end  

  def show
    @lessons = Lesson.find_by(uid: params[:id])

    raise 'Oops' unless @lessons
  end 


end
