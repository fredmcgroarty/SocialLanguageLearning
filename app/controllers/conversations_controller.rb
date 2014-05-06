class ConversationsController < ApplicationController
  before_filter :authenticate_user!
  helper_method :mailbox, :conversation

  def new
  end

  def index
    return redirect_to_sign_in if missing_information
    @conversations ||= current_user.mailbox.inbox.all
    if @conversations.to_a.any?
      return redirect_to @conversations.first
    end
  end

  def create
    recipient_emails = conversation_params(:recipients).split(',')
    recipients = User.where(email: recipient_emails).all
    if recipients.length == 1
      ## using first, method needs to be changed to handle all array
      conversation = current_user.
      send_message(recipients.first, *conversation_params(:body, :subject)).conversation
      redirect_to conversation
    else
      flash[:alert] = "Oops! We can not find user with this email.."
      return redirect_to '/conversations/new'
    end
  end

  def reply
    return redirect_to_sign_in if missing_information
    current_user.reply_to_conversation(conversation, *message_params(:body, :subject))
    redirect_to conversation
  end


  def trashbin 
    return redirect_to_sign_in if missing_information    
    @trash ||= current_user.mailbox.trash.all   
  end

  def trash
    return redirect_to_sign_in if missing_information  
    conversation.move_to_trash(current_user)  
    redirect_to :conversations 
  end 

  def untrash
    return redirect_to_sign_in if missing_information 
    conversation.untrash(current_user)  
    redirect_to :back 
  end

  def empty_trash   
    return redirect_to_sign_in if missing_information
    current_user.mailbox.trash.each do |conversation|    
      conversation.receipts_for(current_user).update_all(:deleted => true)
    end
    redirect_to :back
  end


  private
   
  def mailbox
   @mailbox ||= current_user.mailbox
  end
   
  def conversation
   try_to_find_conversation = mailbox.conversations.find(params[:id])
    if try_to_find_conversation
      @conversation = try_to_find_conversation
    else
      @conversation = Conversation.new
    end
  end
   
  def conversation_params(*keys)
   fetch_params(:conversation, *keys)
  end
   
  def message_params(*keys)
   fetch_params(:message, *keys)
  end
   
  def fetch_params(key, *subkeys)
   params[key].instance_eval do
     case subkeys.size
     when 0 then self
     when 1 then self[subkeys.first]
     else subkeys.map{|k| self[k] }
     end
   end
  end
end










