class SessionController < ApplicationController
  def index
    @user = User.find_by(id: session[:user_id])
  end

  def signup
  end

  def login
  end

  def create
    @user = User.find_by(email: xyz_params[:email])
    if @user.present? && @user.authenticate(xyz_params[:password])
      session[:user_id] = @user.id

      flash[:notice] = "Login success"
      redirect_to root_path
      else
        flash.now[:errors] = "Wrong email or password"
        render :index
    end

  end

  def logout
    session.clear
    redirect_to root_path, notice: 'logout successfully'
  end

  private
  def xyz_params
    params.permit(:email, :password)
  end
end
