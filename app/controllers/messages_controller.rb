class MessagesController < ApplicationController
 
  # GET /message/new
  def new
    return redirect_to_sign_in if missing_information
    @user = User.find(params[:user_id])
    @message = current_user.messages.new
  end
 
   # POST /message/create
  def create
    return redirect_to_sign_in if missing_information
    @recipient = User.find(params[:user_id])
    if @recipient == current_user
      flash[:alert] = "You cannot send yourself a message!"
      return redirect_to '/messages/new'
    end
    current_user.send_message(@recipient, params[:body], params[:subject])
    flash[:notice] = "Message has been sent!"
    redirect_to :conversations
  end
end