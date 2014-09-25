class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :desktop_redirect



private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def mobile_device?
    request.user_agent =~ /Mobile|webOS/
  end

  def desktop_redirect
    if mobile_device? == nil
      redirect_to "http://hi.gratch.us/"
    end
  end

helper_method :current_user
helper_method :mobile_device?



end
