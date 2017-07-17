class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def current_farmer
    @current_farmer ||= Farmer.find(session[:farmer_id]) if session[:farmer_id]
  end
  helper_method :current_farmer

end
