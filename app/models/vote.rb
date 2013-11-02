class Vote < ActiveRecord::Base
  attr_accessible :answer_id, :vote_type, :user_id

  belongs_to :user
  belongs_to :answer

end
























