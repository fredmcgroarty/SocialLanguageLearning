class BookingsController < ApplicationController
  respond_to :html, :xml, :json
  before_action :find_user


  def index
    if missing_information
      flash[:alert] = "In order to use the site please fill out your user profile"
      return redirect_to  edit_user_profile_path(current_user)
    end
    @bookings = Booking.all
    @userbookings = []
    @user = current_user
    assign_bookings if @user
    @userbookings
    @users = User.all
  end

  def new
    return redirect_to_sign_in if missing_information
    @booking = Booking.new(user_id: @user.id)
  end

  def create
    return redirect_to_sign_in if missing_information
    @booking =  Booking.new booking_params
    assign_languages
    @booking.assign_attributes booking_params
    if @user.id == current_user
      flash[:alert] = "You cannot invite yourself!"
      return redirect_to "/user_profiles/#{@user.id}"
    elsif @booking.length == nil
      flash[:alert] = "Please enter a valid duration"
      return redirect_to "/user_profiles/#{@user.id}"
    elsif @booking.topic_id == nil
      flash[:alert] = "Please select a topic!"
      return redirect_to "/user_profiles/#{@user.id}"
    elsif !@booking.valid?
      flash[:alert] = "Double booked!!"
      return redirect_to "/user_profiles/#{@user.id}"
    end
    @booking.save!
    send_invite        
    redirect_to user_bookings_path(@user, method: :get)
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
    if @booking.update booking_params
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

  def booking_params
    params[:booking].permit(:user_id, :start_time, :length, :accepted, :topic_id, :student_id)
  end

  def send_invite
    @recipient = User.find(params[:user_id])
    body = (render_to_string('bookings/_body', layout: false)).html_safe
    subject = "New booking request!"
    current_user.send_message(@recipient, body, subject)
    flash[:notice] = "Invite has been sent!"
  end

  def assign_languages
    @booking.lang1 = @user.native_lang
    @booking.user_id = @user.id
    @booking.student = current_user
    @booking.lang2 = @booking.student.native_lang
  end

  def assign_bookings
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

  def missing_information
    current_user.user_profile.first_name.nil? ||
    current_user.user_profile.last_name.blank? ||
    current_user.user_profile.dob.nil? ||
    current_user.user_profile.gender.nil? ||
    current_user.user_profile.picture_file_name.nil? ||
    current_user.user_profile.native_lang.blank? ||
    current_user.user_profile.first_lang.blank? ||
    current_user.user_profile.second_lang.blank?
  end

end
