class QuestionsController < ApplicationController

  def new
    #where the magic happens
    @user = User.find(session[:user_id])
    @topics = User.topics
  end

  def show
    @question = Question.find(params[:id])
  end

end
