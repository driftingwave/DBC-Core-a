class UserSessionsController < ApplicationController

  def new
    @user_session = UserSession.new
  end

  def create 
    if @user && @user.password_digest == User.password_digest(params[:password])
      session[:logged_in] = true
      session[:user_id] = @user.id
      redirect_to account_path
    else
      # @failed_login = true
      render :new
    end
  
  end

  def destroy
    session[:logged_in] = false
    session.clear
    redirect_to root_path
  end

end
