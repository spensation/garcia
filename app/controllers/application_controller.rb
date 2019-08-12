class ApplicationController < ActionController::Base
  include SessionsHelper

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    current_user != nil
  end

  def authorize
    redirect_to '/login' unless current_user
  end
end
