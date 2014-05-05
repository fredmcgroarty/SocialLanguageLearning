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
    @language_counter = UserProfile.all
  end

  def redirect_to_sign_in
    flash[:alert] = "Please sign in or complete your profile to use this feature"
    redirect_to '/'
  end

	protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
  end



end
