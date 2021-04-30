module ApplicationHelper
  def sign_in?
    session[:user_id].present?
  end
end
