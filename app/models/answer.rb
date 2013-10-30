class Answer < ActiveRecord::Base
  attr_accessible :body, :question_id, :responder_id, :vote_total
end
