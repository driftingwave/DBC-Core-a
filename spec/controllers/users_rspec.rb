require 'spec_helper'

describe UsersController do 
	describe "GET #index" do
		it { populates an array of users }
			user = Factory(:user)
			get :index
			assigns(:user).should eq([user])
	end

	it "renders the :index view" do
		get :index
		response.should render_template :index
	end
end

describe "GET #show" do
	it "assigns the requested user to @user" do
		user = Factory(:user)
		get :show, id: user
		assigns(:user).should eq(user)
	end

describe "POST create" do
	context "with valid attributes" do
		it "creates a new user" do
			expect{
				post :create, user: Factory.attributes_for(:user)
				}.to change(User,:count).by(1)
		end
	end

	context "invalid attributes" do
		it "does NOT create a new user" do
			expect{
				post :create, user: Factory.attributes_for(:bad_user)
				}.to change(User,:count).by(1)
			}
end