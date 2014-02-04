class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  rescue_from CanCan::AccessDenied do |exception|
  redirect_to root_path, alert: "get stuffed, hacker!!!"   # Displays an alert message, when we come to the AccessDenied Error.
    end

  private
  def current_user
    begin
      @current_user ||= User.find(session[:user_id]) if session[:user_id] #check if current user has an id
      rescue ActiveRecord::RecordNotFound #if not this error occurs. Rescue this error by deleting the session (logout)
      session.delete(:user_id)
      return nil
    end
  end
end
