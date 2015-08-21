class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :logged_in?
  helper_method :all_courses

  def current_user
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def logged_in?
    !!current_user
  end

  def login!(user)
    session[:session_token] = user.reset_session_token!
    redirect_to root_url
  end

  def logout!
    current_user.reset_session_token!
    session[:session_token] = nil
    redirect_to login_url
  end

  def all_courses
    Course.all
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end

  def redirect_unless_logged_in
    redirect_to login_url unless logged_in?
  end
end
