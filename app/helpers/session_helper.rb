module SessionHelper
  def has_login?
    session[:user_id].present?
  end
end
