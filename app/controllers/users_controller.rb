class UsersController < ApplicationController


  def index
    @user = current_user
  end

  def new 

  end
  

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Signup Successful!"
    else
      flash[:notice] = "Invalid signup"
    end
    render 'new'
  end

end
