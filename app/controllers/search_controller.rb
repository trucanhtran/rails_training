class SearchController < ApplicationController
  def new

  end

  def create
    @books = Book.where("lower(name) LIKE ?", "%#{params[:aaa]}%")
    render json: @books
  end

  def search_user
    @users = User.where(sex: params[:sex])
    render json: @users
  end
end
