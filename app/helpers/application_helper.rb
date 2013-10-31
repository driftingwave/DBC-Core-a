module ApplicationHelper

  def session_fail
    if session[:logged_in]
      return true
    else
      return false
    end
  end

  def current_user
    if session[:logged_in]
      @current_user = User.find(session[:user_id])
      return @current_user
    else
      return nil
    end
  end

  def find_user(email)
    user = User.find_by_email(email)
    if user.nil?
      return false
    else
      return user
    end
  end
end
