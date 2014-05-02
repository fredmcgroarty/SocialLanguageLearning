class MessagesController < ApplicationController
 

  def missing_information
    @user_prof = current_user.user_profile
    @user_prof.native_lang.nil? || @user_prof.first_lang.nil? || @user_prof.first_name.empty? || @user_prof.last_name.empty? 
  end

  # GET /message/new
  def new
    if missing_information
      redirect_to edit_user_profile_path(current_user)
      flash[:message] = "Complete your profile first!"
    else 
      @user = User.find(params[:user_id])
      @message = current_user.messages.new

    end
  end
 
   # POST /message/create
  def create
    @recipient = User.find(params[:user_id])
    current_user.send_message(@recipient, params[:body], params[:subject])
    flash[:notice] = "Message has been sent!"
    redirect_to :conversations
  end
end