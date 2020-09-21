class ApplicationController < ActionController::Base
  helper_method :logged_in?, :current_user

  def logged_in?
    !current_user.nil?
  end

  def authorized
    redirect_to new_user_session_path unless logged_in?
  end
end
