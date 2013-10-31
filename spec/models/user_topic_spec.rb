require 'spec_helper'

describe UserTopic do

  it { should belong_to(:user) }
  it { should belong_to(:topic) }

end
