class UsersController < ApplicationController
  # include ActionView::Helpers::ApplicationHelper

  def new 

  end
  

  def create
    @user = User.create(params[:user])
    if @user.valid?
      redirect_to user_path
    else
      redirect_to home_index_path
    end
  end

  def show
    @user = User.find(session[:user_id])
    render 'show'
  end

  def update

  end

end
