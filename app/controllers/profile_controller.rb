class ProfileController < ApplicationController

  def update
    @user = current_user

    new_profile = params[:profile]

    compare_attributes = {}
    compare_attributes[:first_name] = []
    compare_attributes[:last_name]  = []
    compare_attributes[:username]   = []

    compare_attributes[:first_name].push( @user.first_name,
                                          new_profile["first_name"]
                                        )

    compare_attributes[:last_name].push( @user.last_name,
                                         new_profile["last_name"]
                                       )

    compare_attributes[:username].push( @user.username,
                                        new_profile["username"]
                                      )

    compare_attributes.each do |attribute, values|
      if values[0] != values[1] &&
         values[1] != ""
        @user.update_attribute(attribute, values[1])
      end
    end

    # user case invalid email
    if  new_profile["email"] != "" &&
       (new_profile["email"] =~ /\w+@\w+\.\w{2,3}/).nil?
      flash[:error] = "Invalid email or password"
      puts "!!!!!!!!!!!!!!!!!!!!!!!!!"
      p @error
      puts "!!!!!!!!!!!!!!!!!!!!!!!!!"
      # render 'profile'
      redirect_to profile_path(@user)
    else
      redirect_to user_path(@user)
    end


    # user case change password



    # if params[:password] == ""
    #   redirect_to profile_path
    # else User.update(@user.id, params[:user])
    #   redirect_to user_path(@user)
    # end

  end
end



    # puts "!!!!!!!!!!!!!!!!!!!!!!!!!"
    # p @user
    # puts "!!!!!!!!!!!!!!!!!!!!!!!!!"

# p params
# {"utf8"=>"✓", "_method"=>"put",
#   "authenticity_token"=>"6RVlrOhv+qOFvQP2mnSbmwJN+VZE8CW9IoHeLxefTyo=",
#   "profile"=>{"first_name"=>"James", "last_name"=>"Howard", "username"=>"how", "email"=>"how@email.com", "password"=>"", "password_confirmation"=>""},
#   "activated"=>["Sports", "Science", "Culture"],
#   "commit"=>"Update",
#   "action"=>"update",
#   "controller"=>"profile",
#   "id"=>"1"}

# p @user
# <User id: 1, first_name: "James", last_name: "Howard", username: "how", email: "how@email.com", password_digest: "$2a$10$n/gNF6Qv99F3bDPbVuizLeRUIbxLGANme.YlRxLz8DPO...", created_at: "2013-11-02 00:18:54", updated_at: "2013-11-02 00:18:54">
