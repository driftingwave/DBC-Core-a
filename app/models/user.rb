class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation, :username
  has_secure_password

  validates_presence_of :first_name, :last_name, :username
  validates :email, format: { with: /\w+@\w+\.\w{2,3}/ }
  validates :email, uniqueness: true

  has_many :user_topics
  has_many :topics, through: :user_topics
  has_many :questions
  has_many :answers
  has_many :comments
  has_many :votes
end