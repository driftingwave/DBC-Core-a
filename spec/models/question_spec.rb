require 'spec_helper'

describe Question do

  it { should belong_to(:topic) }
  it { should belong_to(:user) }
  it { should have_many(:answers) }

end
