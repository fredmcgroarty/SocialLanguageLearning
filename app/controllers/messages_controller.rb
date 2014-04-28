class MessagesController < ApplicationController
  def index
    @message = Message.new
    @messages = Message.all
  end

  def show

  end

  def create
    @message = Message.new params[:message].permit(:body)
    @message.user = current_user

    if @message.save
      redirect_to '/messages/'
      flash[:notice] = "Message created"
    else
      render 'index'
    end
  end

  def destroy
    @message = Message.find params[:id]
    @message.destroy
    flash[:notice] = "Message deleted"
    redirect_to '/messages'
  end
end