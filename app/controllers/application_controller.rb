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
      current_user.user_profile.first_lang.blank? ||
      current_user.user_profile.second_lang.blank?)
    end
    missing_info || !current_user
  end

  def language_counter
    @language_counter_english =  UserProfile.count native_lang: "English"
    @language_counter_french =  UserProfile.count native_lang: "French"
    @language_counter_spanish =  UserProfile.count native_lang: "Spanish"
  end

  def redirect_to_sign_in
    flash[:alert] = "Please sign in or complete your profile to use this feature"
    redirect_to '/'
  end

  def get_topics
    @topics_a, @topics_b, @topics_c, @topics_d = []
    @topics =  Topic.all
    @topics.each do |x|
      if x.id < 6
        @topics_a << x
      elsif x.id < 11
        @topics_b << x
      elsif x.id < 16
        @topics_c << x
      elsif x.id < 21
        @topics_d << x
      end
    end
  end

	protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
  end



end
