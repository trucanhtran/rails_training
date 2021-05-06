class SessionController < ApplicationController
  def index
  end

  def signup
  end

  def login
  end

  def create
    @user = User.find_by(email: session_params[:email])
    if @user.present? && @user.authenticate(session_params[:password])
      session[:user_id] = @user.id
      redirect_to root_path, notice: "User successfuly login"
      else
        flash.now[:errors] = "Wrong email"
    end

  end

  def logout
    session.clear
    redirect_to root_path, notice: 'logout successfully'
  end

  private
  def session_params
    params.permit(:email, :password)
  end
end
