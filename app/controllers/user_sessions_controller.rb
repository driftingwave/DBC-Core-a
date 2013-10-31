class UserSessionsController < ApplicationController

  def create 
    user = User.find_by_email(params[:user][:emai])

    @user = user.authenticate(params[:user][:password])

    if @user
      session[:user_id] = @user.id
      session[:logged_in] = true
      redirect_to questions_path
    else
      @failed_login = true
    end
  end

  def destroy
    session[:logged_in] = false
    session.clear
    redirect_to root_path
  end
end
