class Comment < ActiveRecord::Base
  attr_accessible :answer_id, :body, :commenter_id
end
