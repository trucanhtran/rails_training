class UserController < ApplicationController
  def test
    @id = params[:id]
    @member_id = params[:member_id]
  end

  def contact
    @id = params[:id]
    @user_id = params[:user_id]
  end

  def profile
  end
end
