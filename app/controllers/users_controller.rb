class UsersController < ApplicationController
  # include ActionView::Helpers::ApplicationHelper

  def new 

  end
  

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:logged_in] = true
      redirect_to user_path(@user)
    else
      redirect_to home_index_path
    end
  end

  def show
    @user = User.find(params[:id])
    @session = session[:user_id]
    render 'show'
  end

  def update

  end

end
