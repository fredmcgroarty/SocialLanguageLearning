class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def missing_information
    if current_user
      missing_info = (current_user.user_profile.first_name.empty? ||
      current_user.user_profile.last_name.empty? ||
      current_user.user_profile.dob.nil? ||
      current_user.user_profile.gender.nil? ||
      current_user.user_profile.picture_file_name.nil? ||
      current_user.user_profile.native_lang.empty? ||
      current_user.user_profile.first_lang.empty? ||
      current_user.user_profile.second_lang.empty?)
    end
    missing_info || !current_user
  end

  def redirect_to_sign_in
    flash[:alert] = "Please sign in to use this feature"
    redirect_to '/'
  end

	protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
  end

end
