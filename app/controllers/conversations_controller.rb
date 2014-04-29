class ConversationsController < ApplicationController

  def index
    @conversations = Conversation.all
    @message = Message.new
  end

  def new
    @conversation = Conversation.new
  end

  def create
    @conversation = Conversation.new params[:conversation].permit(:subject)
    # if @conversation.participants = []
    
    @conversation.participants << Participant.new(:user => current_user, :conversation => @conversation)
    @conversation.save
    redirect_to '/conversations/'

  end

  def edit
  end

  def show
    @conversation = Conversation.find params[:id]
   
  
  end

  def update


  end

  def destroy
    @conversation = Conversation.find params[:id]
    if @conversation.destroy
      flash[:notice] = "Message deleted"
      redirect_to '/conversations/'
    else
      flash[:notice] = "There was an error while deleting that message"
    end
  end
end
