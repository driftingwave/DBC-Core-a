class ProfileController < ApplicationController

  def update
    @user = current_user
    puts "!!!!!!!!!!!!!!!!!!"
    p @user
    p params
    puts "!!!!!!!!!!!!!!!!!!"

    if params[:password] == ""
      flash[:notice] = "Please enter a password"
      redirect_to profile_path
    else User.update(@user.id, params[:user])
      redirect_to user_path(@user)
    end

  end


end
