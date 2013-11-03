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

  #from question link in users show page

  def show
    @user = current_user
    @question = Question.find(params[:id])


  end


  def up
    @vote = Vote.create(answer_id: params[:answer_id], user_id: current_user.id, vote_type: params[:vote_type])
    answer = Answer.find(params[:answer_id])
    @vote_total = answer.vote_total += @vote.vote_type
    Answer.update(answer.id, vote_total: @vote_total )

    render :json => {:total => @vote_total }
  end
end
