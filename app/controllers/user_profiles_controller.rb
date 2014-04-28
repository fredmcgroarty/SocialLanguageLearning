 class UserProfilesController < ApplicationController 
  def new
    @user_profile = UserProfile.new
  end

  def show
    @user_profile = UserProfile.find params[:id]
  end

  def create
    @user_profile = UserProfile.new params[:user_profile].permit(:user_id, :first_name, :last_name, :dob, :gender, :picture)
    @user_profile.user = current_user

    if @user_profile.save
      redirect_to '/'
      flash[:notice] = "Account created, please update your language profile"
    else
      render 'new'
    end
  end

  def edit
    @user_profile = UserProfile.find params[:id]
    if @user_profile.id == current_user.id 
    else
      redirect_to '/'
    end
  end

  def update
    @user_profile = UserProfile.find params[:id]

    if @user_profile.update params[:user_profile].permit(:user_id, :first_name, :last_name, :dob, :gender, :picture, :native_lang, :first_lang, :second_lang)
      redirect_to '/'
      flash[:notice] = "You have succesfully updated your profile"
    else
      render 'new'
    end
  end



  def destroy
  end

  def index 
  end


end
