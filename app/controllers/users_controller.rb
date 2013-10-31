class UsersController < ApplicationController


  def index
    @user = current_user
  end

  def new 

  end
  

  def create
    @user = User.create(params[:user])
    if @user.valid?
      redirect_to 
    else
      redirect_to home_index_path
    end
    render 'new'
  end

  def show
    render 'profile'
  end

end
