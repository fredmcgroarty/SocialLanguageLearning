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