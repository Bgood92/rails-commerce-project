module SessionsHelper

  def log_in(user)
    session[:user_id] = user.id
  end

  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

  # Logs out the current user.
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
  #
  # # setter
  # def current_user=(user)
  # @current_user = user
  # end
  #
  # # getter
  # def current_user
  #   @current_user ||= User.find(session[:user_id]) if session[:user_id]
  # end
  #
  # def signed_in?
  #   !current_user.nil?
  # end
  #
  # def sign_out
  #   session[:user_id] = nil
  #   self.current_user = nil
  # end
  #
  # def current_user?(user)
  #   user == current_user
  # end
  #
  # def deny_access
  #   redirect_to signin_path, notice: 'Please sign in to access this page.'
  # end
end
