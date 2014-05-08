 class UserProfilesController < ApplicationController 
  
  def index 
    @user_profiles = UserProfile.all
  end

  def new
  end

  def show
    @user_profile = UserProfile.find params[:id]
    @user = @user_profile.user
    @booking = Booking.new
    @bookings =  Booking.all
    get_topics
    get_bookings
    get_hours
    get_reviews
  end

  def create
    ModelMailer.new_user_notification(current_user).deliver
    @user_profile = UserProfile.new params_permit
    @user_profile.user = current_user

      flash[:notice] = "Update successful"
    if @user_profile.save

      redirect_to '/'
    else
      render 'new'
    end
  end

  def edit
    @user_profile = current_user.user_profile
  end

  def update
    @user_profile = current_user.user_profile
    if [:first_name] == "" || [:last_name] == ""
      flash[:alert] = "Please enter valid information"
      return redirect_to edit_user_profile_path
    elsif @user_profile.update params_permit
      @user_profile.update params_permit

      flash[:notice] = "Profile updated successfully!"
      return redirect_to edit_user_profile_path
    else
      flash[:alert] = "Please enter valid informationaaaa"
      return redirect_to edit_user_profile_path
    end
  end

  def destroy
    @user_profile = current_user.user_profile
  end

  def picture
    @user_profile = current_user.user_profile
    unless params[:user_profile]
      flash[:alert] = "Please attach a valid picture!"
      redirect_to edit_user_profile_path
    else
      @user_profile.update picture_params_permit
      flash[:notice] = "Picture udpated successfully!"
      return redirect_to edit_user_profile_path
    end
  end


  private


  def params_permit
    params[:user_profile].permit(:user_id, :first_name, :last_name, :dob, :gender, :picture, :native_lang, :first_lang, :first_lang_lvl, :bio)
  end

  def picture_params_permit
    params[:user_profile].permit(:picture)
  end

end
