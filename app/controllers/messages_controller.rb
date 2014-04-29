class MessagesController < ApplicationController
  def index
    @message = Message.new
    @messages = Message.all
  end

  def create
    @message = Message.new params[:message].permit(:body)
    @message.user = current_user
    # if @message.conversation == nil
    #   @message.conversation = Conversation.create
    #   @message.conversation.subject = 'New conversation'
    # end

    if @message.save
      flash[:notice] = "Message created"
      redirect_to '/conversations/'
    else
      flash[:notice] = "Errorrr"
      redirect_to '/conversations/'
    end

  end

  def destroy
    @message = Message.find params[:id]
    if @message.destroy
      flash[:notice] = "Message deleted"
      redirect_to '/conversations/'
    else
      flash[:notice] = "There was an error while deleting that message"
    end
  end

end