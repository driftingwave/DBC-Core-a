class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question

  attr_accessible :body, :question_id, :responder_id, :vote_total
end
