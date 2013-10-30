class Vote < ActiveRecord::Base
  attr_accessible :answer_id, :type, :voter_id
end
