class LessonTextsController < ApplicationController
  
  def create
    # username: current_user.email, 
    WebsocketRails[:chat].trigger 'new', { message: params[:message] }
    render nothing: true
  end

end
