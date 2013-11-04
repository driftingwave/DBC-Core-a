class TopicsController < ApplicationController

  def show
    @topic = Topic.find(params[:id])
    @topic_questions = @topic.questions


    render 'show'
  end
end



    # puts "!!!!!!!!!!!!!!!!!!!!!!!!"
    # p params
    # {"action"=>"show", "controller"=>"topics", "id"=>"5"}
    # puts "!!!!!!!!!!!!!!!!!!!!!!!!"
