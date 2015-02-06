class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  after_action :store_location

  # Define route on sign in
  def after_sign_in_path_for(resource)
    # super(resource)
    if current_user.admin?
      dashboard_path(resource)
    else
      session[:previous_url] || contestants_path(resource)
    end
  end

  # Define route on sign up
  def after_sign_up_path_for(resource)
    # super(resource)
    dashboard_path(resource)
  end

  protected

  def store_location
    session[:previous_url] = request.fullpath unless in_users_path?
  end

  def in_users_path?
    request.fullpath =~ /\/users/
  end
end
