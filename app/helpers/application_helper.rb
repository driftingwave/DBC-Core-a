module ApplicationHelper

  def session_fail?
    if current_user 
      return false
    else
      true
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

  helper_method :current_user
  helper_method :session_fail?
end
