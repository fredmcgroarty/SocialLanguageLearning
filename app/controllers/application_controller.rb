class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #after_sign_up_fails_path_for('home#index')

  def missing_information
    if current_user
      missing_info = (current_user.user_profile.blank? ||
      current_user.user_profile.first_name.blank? ||
      current_user.user_profile.last_name.blank? ||
      current_user.user_profile.dob.nil? ||
      current_user.user_profile.gender.nil? ||
      current_user.user_profile.picture_file_name.nil? ||
      current_user.user_profile.native_lang.blank? ||
      current_user.user_profile.first_lang.blank? )
    end
    missing_info || !current_user
  end

  def language_counter
    @language_counter_english =  UserProfile.where(native_lang: "English").count
    @language_counter_french =  UserProfile.where(native_lang: "French").count
    @language_counter_spanish =  UserProfile.where(native_lang: "Spanish").count
  end

  def redirect_to_sign_in
    flash[:alert] = "Please sign in or complete your profile to use this feature"
    redirect_to '/'
  end

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

    @topic_names =[]
    @topics = Topic.all
    @topics.each do |topic|
      @topic_names << topic.name
    end  
    @incomplete_topics = @topic_names - @completed_topics

  end

  def get_hours
    @reviews = UserReview.all
    @total_length = [] 
    @bookings.each do |x|
      if (x.user_id == @user.id || x.student_id == @user.id)
        @total_length << x.length
      end
    end
    @bookings_count = @total_length.count
    @total_length = @total_length.sum
  end

  def get_reviews
    @reviews = UserReview.all
    @rev1 = []
    @rev2 = []
    @reviews.each do |x|
      if x.for_user_id = @user.id
        @rev1 << x.rev1
        @rev2 << x.rev2
      end
    end
  end

	protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
  end



end
