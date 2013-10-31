class Question < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user

  attr_accessible :body, :creator_id, :topic_id

end
