class LessonTextsController < ApplicationController
  
  def create
    # username: current_user.email, 
    WebsocketRails[:chat].trigger 'new', { message: params[:message], user_name: current_user.first_name }
    render nothing: true
  end

end
