class Topic < ActiveRecord::Base
  attr_accessible :name

  has_many :questions
  has_many :answers, through: :questions
  has_many :user_topics
  has_many :users, through: :user_topics

end
