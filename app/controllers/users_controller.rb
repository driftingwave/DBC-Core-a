class UsersController < ApplicationController


  def index
    @user = current_user
  end

  def new

  end


  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Signup Successful!"
    else
      flash[:notice] = "Invalid signup"
    end
    render 'new'
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

    answers_by_vote_total_topic_ids.each_with_index do |topic_id, index|
      if users_topics.include?(topic_id)
        @answers_to_be_displayed << answers_by_vote_total[index]
      end
    end

    render 'show'
  end

end
