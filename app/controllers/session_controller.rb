class SessionController < ApplicationController
  def login
  end

  def logout
  end

  def create
    @user = User.find_by(email: session_param[:email])
    if @user.present? && @user.authenticate(session_param[:password])
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'dang nhap thanh cong'
    else
      flash.now[:error] = 'Nhap sai email'
      render :login
    end
  end

  private
  def session_param
    params.permit(:email, :password)
  end
end