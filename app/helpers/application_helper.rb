module ApplicationHelper
  include SessionsHelper
  # helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
end
