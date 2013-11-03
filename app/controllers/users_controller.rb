class UsersController < ApplicationController
  # include ActionView::Helpers::ApplicationHelper

  def new
    @User = User.new
    @topics = Topic.all
  end


  def create
    @user = User.new(params[:user])
    @topics_selected = params[:activated]

    if @user.save && @topics_selected != nil
      session[:logged_in] = true
      session[:user_id] = @user.id
      @topics_selected.each do |topic|
        @user.topics << Topic.find_by_name(topic)
      end
      redirect_to user_path(@user)
    else
      flash[:error] = "Something went wrong with your Sign Up"
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find(session[:user_id])
    users_topics = []

    @user.topics.each do |topic|
      users_topics << topic.id
    end

    answers_by_vote_total_topic_ids = []

    answers_by_vote_total = Answer.order("vote_total DESC")
    answers_by_vote_total.each do |answer|
      answers_by_vote_total_topic_ids << answer.topic.id
    end

    @answers_to_be_displayed = []
    root_question_ids = []

    answers_by_vote_total_topic_ids.each_with_index do |topic_id, index|
      if users_topics.include?(topic_id)
        unless root_question_ids.include?(answers_by_vote_total[index].question.id)
          root_question_ids << answers_by_vote_total[index].question.id
          @answers_to_be_displayed << answers_by_vote_total[index]
        end
      end
    end
 
  if session[:logged_in]
    render 'show'
  else
    redirect_to home_index_path
  end
end


def profile
  @user = current_user
  render 'profile'
end

def update
  
end
end
