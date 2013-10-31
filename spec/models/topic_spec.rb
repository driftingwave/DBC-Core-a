require 'spec_helper'

describe Topic do

  it { should have_many(:questions) }
  it { should have_many(:answers).through(:questions) }
  it { should have_many(:user_topics) }
  it { should have_many(:users).through(:user_topics) }

end
