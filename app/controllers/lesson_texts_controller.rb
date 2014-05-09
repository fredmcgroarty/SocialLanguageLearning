class LessonTextsController < ApplicationController
  
  def create
    # username: current_user.email, 
    channel_name = 'chat_' + params[:uid]
    WebsocketRails[channel_name].trigger 'new', { message: params[:message], user_name: current_user.first_name }
    render nothing: true
  end

end
