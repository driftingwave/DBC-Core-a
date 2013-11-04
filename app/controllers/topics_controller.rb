class TopicsController < ApplicationController

  def show
    @topic = Topic.find(params[:id])
    @topic_questions = @topic.questions

    render 'show'
  end
end

