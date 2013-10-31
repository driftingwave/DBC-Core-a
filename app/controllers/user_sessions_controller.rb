class UserSessionsController < ApplicationController

  def create 
    user = User.find_by_email(params[:user][:email])
    p params[:user][:email]
    params.inspect
    p user.password
    @user = user.authenticate(params[:user][:password])

    if @user
      session[:user_id] = @user.id
      session[:logged_in] = true
      redirect_to user_path(@user)
    else
      @failed_login = true
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
