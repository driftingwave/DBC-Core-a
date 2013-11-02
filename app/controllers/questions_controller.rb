class QuestionsController < ApplicationController
  def index
    p params
      Vote.new(params[:answer])
      redirect question_path(@question)
  end

  def new
    #where the magic happens
    @user = User.find(session[:user_id])
    @topics = User.topics
  end

  def show
    @question = Question.find(params[:id])


  end


  def up
    @vote = Vote.new(params[:answer_id])
    

  end
end
