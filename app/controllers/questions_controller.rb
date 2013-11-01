class QuestionsController < ApplicationController

  def new
    #where the magic happens
    @question = Question.new
    @user = User.find(session[:user_id])
    @topics = User.all
  end

  def create
    @question = Question.new(body: params[:question][:body], user_id: session[:user_id])
    if @question.body != ""
    	redirect_to question_path(@question)
    else
      flash[:error] = "Please enter a question, dude!"	
      redirect_to new_question_path
    end
  end
end
