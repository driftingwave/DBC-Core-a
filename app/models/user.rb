class User < ActiveRecord::Base
  validates_presence_of :email, :first_name, :last_name, :password, :username

  has_many :user_topics
  has_many :topics, through: :user_topics
  has_many :questions
  has_many :answers
  has_many :comments
  has_many :votes

  has_secure_password

  attr_accessible :email, :first_name, :last_name, :password, :username


end
