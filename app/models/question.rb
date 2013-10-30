class Question < ActiveRecord::Base
  attr_accessible :body, :creator_id, :topic_id
end
