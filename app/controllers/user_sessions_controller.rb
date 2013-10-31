class UserSessionsController < ApplicationController

  def create 
    user = find_user(params[:user][:email])

    if user != false 
      @user = user.authenticate(params[:user][:password])
    end

    if @user
      session[:user_id] = @user.id
      session[:logged_in] = true
      redirect_to user_path(@user)
    else
      @failed_login = true
      session.clear
      redirect_to home_index_path
    end
  end

  def destroy
    unless session[:logged_in] = false
      session[:logged_in] = false
      session[:user_id] = nil
      redirect_to home_index_path
    end
  end
end
