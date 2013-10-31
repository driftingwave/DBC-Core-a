class Question < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
  has_many :answers

  attr_accessible :body, :user_id, :topic_id

end
