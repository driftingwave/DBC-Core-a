require 'spec_helper'

describe Answer do

  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:password) }
  it { should have_many(:user_topics) }
  it { should have_many(:topics).through(:user_topics) }
  it { should have_many(:created_questions) }
  it { should have_many(:answers) }
  it { should have_many(:comments) }
  it { should have_many(:votes) }

end
