class ApplicationController < ActionController::Base
  before_action :authenticated
  helper_method :current_user
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

  def authenticated
    current_user
    unless @current_user
      redirect_to sessions_new_path
    end
  end
end
