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
    else
      render 'new'
    end
  end

  def edit
    @user_profile = UserProfile.find params[:id]
  end

  def update
  end

  def destroy
  end

  def index 
  end


end
