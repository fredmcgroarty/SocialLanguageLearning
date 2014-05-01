class BookingsController < ApplicationController
  respond_to :html, :xml, :json
  
  before_action :find_user

  def index
    @bookings = Booking.all
    @userbookings = []
    @user = current_user
    if @user
      @bookings.each do |x|
        if x.user_id == @user.id || x.student_id == @user.id
          @userbookings << x
        end 
      end
    end
   @userbookings
  end

  def new
    @booking = Booking.new(user_id: @user.id)
  end

  def create
    @booking =  Booking.new(params[:booking].permit(:user_id, :start_time, :length))
    @booking.user_id = @user.id
    @booking.student = current_user
    @booking.save        
    @recipient = User.find(params[:user_id])
    body = render_to_string('bookings/_body', layout: false)
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
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id]).destroy
    if @booking.destroy
      flash[:notice] = "Booking: #{@booking.start_time.strftime('%e %b %Y %H:%M%p')} to #{@booking.end_time.strftime('%e %b %Y %H:%M%p')} deleted"
      redirect_to '/'
    else
      render 'index'
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    @user = current_user
  end

  def update
    @booking = Booking.find(params[:id])
    # @booking.user = @user

    if @booking.update(params[:booking].permit(:user_id, :start_time, :length, :accepted))
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
