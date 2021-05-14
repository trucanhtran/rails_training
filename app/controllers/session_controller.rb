class SessionController < ApplicationController
#   before_save :encrypt_password
# before_update :encrypt_password
  def index
    @user = User.find_by(id: session[:user_id])
  end

  def login
  end

  def showPassword
  end


  def updatePassword
    @user = User.find_by(id: session[:user_id])
    if @user.present? && @user.authenticate(password_params[:password])
      new_password = BCrypt::Password.create(password_params[:new_password])
      @user.password_digest = new_password
      @user.save
      redirect_to edit_user_path(@user), notice: "Password has been changed"
    else
      flash.now[:errors] = "Wrong Password"
      render :showPassword
    end
  end

  def showProfile
    @user = User.find_by(id: session[:user_id])
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

  def password_params
    params.permit(:password, :new_password)
  end

end
