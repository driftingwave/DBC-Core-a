class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  has_one :topic, through: :question
  has_many :comments


  attr_accessible :body, :question_id, :user_id, :vote_total
end
