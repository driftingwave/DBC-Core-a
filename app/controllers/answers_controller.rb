class AnswersController < ApplicationController

  def create

# Answer(id: integer, question_id: integer, body: text, user_id: integer,
#   vote_total: integer, created_at: datetime, updated_at: datetime)

    @user = current_user
    @question = Question.find(session[:question_id])
    @answer = Answer.create(question_id: session[:question_id], body: params[:answer][:body], user_id: current_user.id, vote_total: 0)

    redirect_to question_path(@question)
  end

end