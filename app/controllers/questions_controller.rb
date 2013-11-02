class QuestionsController < ApplicationController
  def index
    @question = Question.find(params[:id])
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
    @vote = Vote.create(answer_id: params[:answer_id], vote_type: params[:vote_type])

    render 'up', layout: false
  end
end
