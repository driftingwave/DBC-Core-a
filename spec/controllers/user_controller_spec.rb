require 'spec_helper'

# # require_relative 'factories/users.rb'

describe UsersController do
# #   describe "POST create" do
# #     expect {
# #       post :create, user: Factory.attributes_for(:user)    
# #     }.to change(User,:count).by(1)
# #   end

  describe "GET profile" do
    before do
      get :profile
    end
    it { should respond_with('profile') }
  end

#   # describe "POST create" do
#   #   expect {
#   #     post :create, user: Factory.attributes_for(:user)    
#   #   }.to change(User,:count).by(1)
#   # end
end


  
