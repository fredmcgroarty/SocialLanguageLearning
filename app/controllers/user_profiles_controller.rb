 class UserProfilesController < ApplicationController 
  def new
  end

  def show
    @user_profile = UserProfile.find params[:id]
  end

  def create
    @user_profile = UserProfile.new params_permit
    @user_profile.user = current_user

    if @user_profile.save
      redirect_to '/'
      flash[:notice] = "Account created, please update your language profile"
    else
      render 'new'
    end
  end

  def edit
    @user_profile = current_user.user_profile
  end

  def update
    @user_profile = current_user.user_profile

    if @user_profile.update params_permit
      redirect_to('/')
      flash[:notice] = "You have succesfully updated your profile"
    else
      render 'edit'
    end
  end

  def destroy
  end

  def index 
  end

  private

  def params_permit
    params[:user_profile].permit(:user_id, :first_name, :last_name, :dob, :gender, :picture, :native_lang, :first_lang, :second_lang)
  end

end
