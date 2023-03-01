class ApplicationController < ActionController::Base

  before_action :authenticate_user!

  helper_method :current_user,
                :logged_in?

  private

  def authenticate_user!
    unless current_user
      cookies[:return_to_url] = request.url
      redirect_to login_path, alert: 'Are you Guru? Verify your Password'
    end

    cookies[:email] = current_user&.email
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def logged_in?
    @current_user.present?
  end
end
