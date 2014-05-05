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
    get_topics
  end

  def create
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
    if @user_profile.update params_permit
      flash[:notice] = "Update successful"
      redirect_to edit_user_profile_path
    else
      render 'edit_user_profile_path'
      flash[:notice] = "update failed"
    end
  end

  def destroy
    
  end


  private

  def get_topics
    @reviews = UserReview.all
    @completed_topics = []
    @total_score = []
    @average_score = 0
    @reviews.each do |x|
      if x.for_user_id == @user.id
        @total_score << x.score
        b = Topic.find (x.topic_id)
        @completed_topics << b.name
        (@average_score = @total_score.sum / @total_score.count )
      end
    end
  end


  def params_permit
    params[:user_profile].permit(:user_id, :first_name, :last_name, :dob, :gender, :picture, :native_lang, :first_lang, :second_lang, :first_lang_lvl, :second_lang_lvl, :about_me)
  end

end
