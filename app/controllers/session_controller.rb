class SessionController < ApplicationController
  def index
    @user = User.find_by(id: session[:user_id])
  end

  def signup
  end

  def login
  end

  def create
    @user = User.find_by(email: session_params[:email])
    if @user.present? && @user.authenticate(session_params[:password])
      session[:user_id] = @user.id

      redirect_to root_path
      flash[:notice] = "Login success"
    else
      flash.now[:errors] = "Wrong email or password"
      render :login
    end
  end

  def logout
    session.clear
    redirect_to root_path, notice: "Log Out Successfully"
  end

  private

  def session_params
    params.permit(:email, :password, :avatar)
  end

end
