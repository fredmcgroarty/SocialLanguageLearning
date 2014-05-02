class BookingsController < ApplicationController
  respond_to :html, :xml, :json
  
  before_action :find_user




  def missing_information
    current_user.user_profile.first_name.nil? ||
    current_user.user_profile.last_name.empty? ||
    current_user.user_profile.dob.nil? ||
    current_user.user_profile.gender.nil? ||
    current_user.user_profile.picture_file_name.nil? ||
    current_user.user_profile.native_lang.empty? ||
    current_user.user_profile.first_lang.empty? ||
    current_user.user_profile.second_lang.empty?
    
  
  end

      

  def index

    return redirect_to_sign_in if missing_information

  def missing_information
    @user_prof = current_user.user_profile
    @user_prof.native_lang.nil? || @user_prof.first_lang.nil? || @user_prof.first_name.empty? || @user_prof.last_name.empty? 
  end

  def index
    if missing_information
      flash[:alert] = "In order to use the site please fill out your user profile"
      redirect_to  edit_user_profile_path(current_user)
    end
    @bookings = Booking.all
    @userbookings = []


    @user = current_user
    
    if @user
      @bookings = Booking.all
      @userbookings = []
      @user = current_user
      @bookings.each do |x|
        if x.user_id == @user.id || x.student_id == @user.id
          @userbookings << x
        end 
      end
    end
    @userbookings
  end

  def new
    return redirect_to_sign_in if missing_information
    @booking = Booking.new(user_id: @user.id)
  end

  def create
    return redirect_to_sign_in if missing_information
    if @user.id == current_user
      flash[:alert] = "You cannot invite yourself!"
      return redirect_to '/'
    end
    if params[:start_time] == nil
      flash[:alert] = "Please enter a valid duration"
      return redirect_to "/user_profiles/#{@user.id}"
    end
    @booking =  Booking.new(params[:booking].permit(:user_id, :start_time, :length, :topic_id))
    @booking.lang1 = @user.native_lang
    @booking.user_id = @user.id
    @booking.student = current_user
    @booking.lang2 = @booking.student.native_lang
  
    @booking.save        
    @recipient = User.find(params[:user_id])
    body = render_to_string('bookings/_body', layout: false).html_safe
    subject = "New booking request!"
    current_user.send_message(@recipient, body, subject)
    flash[:notice] = "Invite has been sent!"
    
    if @booking.save
      redirect_to user_bookings_path(@user, method: :get)
    else
      render 'new'
    end
  end

  def show
    return redirect_to_sign_in if missing_information
    @booking = Booking.find(params[:id])
  end

  def destroy
    return redirect_to_sign_in if missing_information
    @booking = Booking.find(params[:id]).destroy
    if @booking.destroy
      flash[:notice] = "Booking: #{@booking.start_time.strftime('%e %b %Y %H:%M%p')} to #{@booking.end_time.strftime('%e %b %Y %H:%M%p')} deleted"
      redirect_to '/'
    else
      render 'index'
    end
  end

  def edit
    return redirect_to_sign_in if missing_information
    @booking = Booking.find(params[:id])
    @user = current_user
  end

  def update
    return redirect_to_sign_in if missing_information
    @booking = Booking.find(params[:id])
    # @booking.user = @user

    if @booking.update(params[:booking].permit(:user_id, :start_time, :length, :accepted, :topic_id))
      flash[:notice] = 'Your booking was updated succesfully'

      if request.xhr?
        render json: {status: :success}.to_json
      else
        redirect_to user_bookings_path(@user)
      end
    else
      render 'edit'
    end
  end

  private

  def save booking
    if @booking.save
        flash[:notice] = 'booking added'
        redirect_to user_booking_path(@user, @booking)
      else
        render 'new'
      end
  end

  def find_user
    if params[:user_id]
      @user = User.find_by_id(params[:user_id])
    end
  end

end
