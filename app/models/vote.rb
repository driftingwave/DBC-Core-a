class Vote < ActiveRecord::Base
  attr_accessible :answer_id, :type, :voter_id

  belongs_to :user
  belongs_to :answer

end
