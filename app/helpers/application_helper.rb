module ApplicationHelper
  def log_in?
    session[:user_id].present?
  end
end
