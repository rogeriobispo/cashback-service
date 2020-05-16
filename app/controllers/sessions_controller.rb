class SessionsController < ApplicationController
  skip_before_action :authenticated
  def new
    @user = User.new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to  new_offer_path, flash: { success: "user logged" }
    else
      redirect_to sessions_new_path, flash: { danger: "User or password invalid" }
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to home_url, notice: "Logged out!"
  end
end
