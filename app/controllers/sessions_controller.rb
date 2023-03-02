class SessionsController < ApplicationController

  skip_before_action :authenticate_user!

  def new;end

  def create
    user = User.find_by(email: params[:email])

    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to  (cookies.delete :return_to_url) || tests_path
    else
      redirect_to login_path, alert: 'Verify your Email and Password'
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to login_path, notice: 'You have left your page'
  end

end
