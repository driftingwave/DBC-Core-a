class ProfileController < ApplicationController

  def update
    @user = current_user
    new_profile = params[:profile]

    # user case: changes first name, last name, and or username
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

    # user case: enters invalid email
    if new_profile["email"] != ""
      if (new_profile["email"] =~ /\w+@\w+\.\w{2,3}/).nil?
        flash[:error] = "Invalid email"
        redirect_to profile_path(@user)
      else
        @user.update_attribute(:email, new_profile[:email])
        redirect_to user_path(@user)
      end
    end

    # user case: changes selected topics
    user_topic_objects = @user.topics
    user_topic_names = []
    user_topic_objects.each do |topic|
      user_topic_names << topic.name
    end

    user_topic_names.uniq
    selected_topic_names = []
    selected_topic_names.push(params["activated"]) if params["activated"]
    selected_topic_names.push(params["deactivated"]) if params["deactivated"]
    selected_topic_names.flatten!

    selected_topic_names.each do |topic|
      unless user_topic_names.include?(topic)
        UserTopic.create user_id: @user.id, topic_id: Topic.find_by_name(topic).id
      end
    end

    user_topic_names.each do |topic|
      unless selected_topic_names.include?(topic)
        current_topic = Topic.find_by_name(topic)
        UserTopic.delete_all("user_id = #{@user.id} AND topic_id = #{current_topic.id}")
      end
    end

    # impletment feature: change password
  end
end
